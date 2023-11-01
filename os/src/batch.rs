use core::{arch::asm, mem, slice};

use lazy_static::lazy_static;
use log::{debug, info, warn};

use crate::{sbi::legacy::shutdown, sync::up::UPSafeCell, trap::context::TrapContext};

const MAX_APP_COUNT: usize = 10;
pub const APP_BASE_ADDRESS: usize = 0x80400000;
pub const APP_SIZE_LIMIT: usize = 0x20000;

const USER_STACK_SIZE: usize = 4096;
const KERNEL_STACK_SIZE: usize = 4096;

#[repr(align(4096))]
struct KernelStack([u8; KERNEL_STACK_SIZE]);

impl KernelStack {
    pub fn get_sp(&self) -> usize {
        self.0.as_ptr() as usize + KERNEL_STACK_SIZE
    }

    pub fn push_context(&self, cx: TrapContext) -> &'static mut TrapContext {
        let cx_ptr = (self.get_sp() - mem::size_of::<TrapContext>()) as *mut TrapContext;

        unsafe {
            *cx_ptr = cx;
            cx_ptr.as_mut().unwrap()
        }
    }
}

static KERNEL_STACK: KernelStack = KernelStack([0; KERNEL_STACK_SIZE]);

#[repr(align(4096))]
pub struct UserStack([u8; USER_STACK_SIZE]);

impl UserStack {
    pub fn get_sp(&self) -> usize {
        self.0.as_ptr() as usize + USER_STACK_SIZE
    }

    pub fn contains(&self, pointer: usize) -> bool {
        (self.0.as_ptr() as usize) < pointer && pointer <= self.get_sp()
    }
}

pub static USER_STACK: UserStack = UserStack([0; USER_STACK_SIZE]);

pub struct AppManager {
    current_app: usize,
    app_count: usize,
    app_start: [usize; MAX_APP_COUNT + 1],
}

impl AppManager {
    pub fn new() -> AppManager {
        extern "C" {
            fn _num_app();
        }

        let app_ptr = _num_app as usize as *const usize;

        let app_count = unsafe { app_ptr.read_volatile() };

        let mut app_start: [usize; MAX_APP_COUNT + 1] = [0; MAX_APP_COUNT + 1];

        let apps = unsafe { slice::from_raw_parts(app_ptr.add(1), app_count + 1) };

        app_start[..=app_count].copy_from_slice(apps);

        AppManager {
            current_app: 0,
            app_count,
            app_start,
        }
    }

    pub unsafe fn load_app(&self, app_id: usize) -> Option<usize> {
        if app_id >= self.app_count {
            return None;
        }

        info!("loading app {}...", app_id);

        slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, APP_SIZE_LIMIT).fill(0);

        let app_src = slice::from_raw_parts(
            self.app_start[app_id] as *const u8,
            self.app_start[app_id + 1] - self.app_start[app_id],
        );

        let app_dst = slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, app_src.len());

        app_dst.copy_from_slice(app_src);

        asm!("fence.i");

        Some(app_id)
    }

    pub unsafe fn load_next_app(&mut self) -> Option<usize> {
        self.load_app(self.current_app)
            .inspect(|next_id| self.current_app = *next_id + 1)
    }

    pub fn print_app_info(&self, app_id: usize) -> () {
        if app_id >= self.app_count {
            warn!("app_{} not found", app_id);
            return;
        }

        info!(
            "app_{} [{:#x}, {:#x})",
            app_id,
            self.app_start[app_id],
            self.app_start[app_id + 1]
        );
    }

    pub fn print_all_app_info(&self) {
        for id in 0..self.app_count {
            self.print_app_info(id)
        }
    }
}

lazy_static! {
    static ref APP_MANAGER: UPSafeCell<AppManager> = unsafe { UPSafeCell::new(AppManager::new()) };
}

pub fn init() {
    APP_MANAGER.borrow().print_all_app_info()
}

pub fn run_next_app() -> ! {
    let mut app_manager = APP_MANAGER.borrow_mut();

    if let None = unsafe { app_manager.load_next_app() } {
        warn!("complete all apps, shutting down...");
        shutdown(None)
    }

    debug!("app loaded");

    drop(app_manager);

    extern "C" {
        fn __restore(cx: usize);
    }

    unsafe {
        debug!("switching to next app...");
        __restore(KERNEL_STACK.push_context(TrapContext::new_app_init(
            APP_BASE_ADDRESS,
            USER_STACK.get_sp(),
        )) as *const TrapContext as usize);
    }

    unreachable!()
}

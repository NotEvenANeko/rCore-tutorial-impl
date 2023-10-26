use log::{debug, warn};
use riscv::register::{
    scause::{self, Exception, Trap},
    stval, stvec,
    utvec::TrapMode,
};

use core::{arch::global_asm, include_str};

use crate::{batch::run_next_app, syscall::syscall};

use self::context::TrapContext;

pub mod context;

global_asm!(include_str!("trap.S"));

pub fn init() {
    extern "C" {
        fn __alltraps();
    }

    unsafe {
        stvec::write(__alltraps as usize, TrapMode::Direct);
    }
}

#[no_mangle]
pub fn trap_handler(cx: &mut TrapContext) -> &mut TrapContext {
    let scause = scause::read();
    let stval = stval::read();

    debug!(
        "id: {:#x}, arg0: {}, arg1: {}, arg2: {}",
        cx.x[17], cx.x[10], cx.x[11], cx.x[12]
    );

    debug!("cause:{:#?}, sepc:{:#x}", scause.cause(), cx.sepc);

    match scause.cause() {
        Trap::Exception(Exception::UserEnvCall) => {
            // next ins after trap
            cx.sepc += 4;
            cx.x[10] = syscall(cx.x[17], cx.x[10], cx.x[11], cx.x[12]) as usize;
        }
        Trap::Exception(Exception::StoreFault) | Trap::Exception(Exception::StorePageFault) => {
            warn!("PageFault in application, killing...");
            run_next_app();
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            warn!("IllegalInstruction in application, killing...");
            run_next_app();
        }
        _ => {
            unimplemented!("trap: {:?}, stval: {:#x}", scause.cause(), stval);
        }
    }

    cx
}

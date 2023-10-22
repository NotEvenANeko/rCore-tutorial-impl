#![feature(result_option_inspect)]
#![no_std]
#![no_main]

mod console;
mod lang_items;
mod logger;
mod sbi;

use core::{arch::global_asm, include_str};

use log::{debug, error, info, trace, warn};

use crate::{
    logger::{init_logger, Logger},
    sbi::legacy::shutdown,
};

global_asm!(include_str!("entry.asm"));

static GLOBAL_LOGGER: Logger = Logger;

#[no_mangle]
pub fn rust_main() -> ! {
    clear_bss();

    init_logger(&GLOBAL_LOGGER).unwrap();

    extern "C" {
        fn stext();
        fn etext();
        fn sdata();
        fn edata();
        fn srodata();
        fn erodata();
        fn sbss();
        fn ebss();
    }

    info!(".text [{:#x}, {:#x})", stext as usize, etext as usize);
    info!(".data [{:#x}, {:#x})", sdata as usize, edata as usize);
    info!(".rodata [{:#x}, {:#x})", srodata as usize, erodata as usize);
    info!(".bss [{:#x}, {:#x})", sbss as usize, ebss as usize);

    trace!("Trace");
    debug!("Debug");
    info!("Info");
    warn!("Warn");
    error!("Error");

    shutdown(None);
}

fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }

    unsafe {
        (sbss as *mut u8).write_bytes(0, ebss as usize - sbss as usize);
    }
}

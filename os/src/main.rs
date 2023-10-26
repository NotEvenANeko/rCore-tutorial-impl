#![feature(result_option_inspect)]
#![no_std]
#![no_main]

mod batch;
mod console;
mod lang_items;
mod logger;
mod sbi;
mod sync;
mod syscall;
mod trap;

use core::{arch::global_asm, include_str};

use lazy_static::lazy_static;
use log::info;
use shared::clear_bss;

use crate::logger::{init_logger, Logger};

global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("link_app.S"));

lazy_static! {
    static ref GLOBAL_LOGGER: Logger = Logger::with_module("kernel");
}

#[no_mangle]
pub fn rust_main() -> ! {
    clear_bss();

    init_logger(&*GLOBAL_LOGGER).unwrap();

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

    trap::init();
    batch::init();

    batch::run_next_app()
}

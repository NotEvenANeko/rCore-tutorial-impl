#![no_std]
#![feature(linkage)]

pub mod console;
mod lang_items;
pub mod syscall;

use core::panic;

use shared::clear_bss;

use crate::syscall::exit;

#[no_mangle]
#[link_section = ".text.entry"]
pub extern "C" fn _start() -> ! {
    clear_bss();
    exit(main())
}

#[no_mangle]
#[linkage = "weak"]
fn main() -> i32 {
    panic!("Cannot find main");
}

#![no_std]
#![no_main]

#[macro_use]
extern crate user_lib;
use shared::syscall::fd::STDOUT;
use user_lib::syscall::{write, SyscallError};
const DATA_STRING: &str = "string from data section\n";

/// 正确输出：
/// string from data section
/// strinstring from stack section
/// strin
/// Test write1 OK!

#[no_mangle]
pub fn main() -> i32 {
    assert!(matches!(
        write(1234, DATA_STRING.as_bytes()),
        Err(SyscallError)
    ));
    assert_eq!(
        write(STDOUT, DATA_STRING.as_bytes()).unwrap(),
        DATA_STRING.len() as isize
    );
    assert_eq!(write(STDOUT, &DATA_STRING.as_bytes()[..5]).unwrap(), 5);
    let stack_string = "string from stack section\n";
    assert_eq!(
        write(STDOUT, stack_string.as_bytes()).unwrap(),
        stack_string.len() as isize
    );
    assert_eq!(write(STDOUT, &stack_string.as_bytes()[..5]).unwrap(), 5);
    println!("\nTest write1 OK!");
    0
}

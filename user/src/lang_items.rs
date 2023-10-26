use core::panic::PanicInfo;

use crate::{println, syscall::exit};

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("{}", info);

    exit(1)
}

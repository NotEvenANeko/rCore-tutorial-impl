use core::panic::PanicInfo;

use crate::{println, sbi::legacy::shutdown};

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("{}", info);

    shutdown(None)
}

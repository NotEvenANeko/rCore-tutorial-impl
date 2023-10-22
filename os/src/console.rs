use core::fmt::{Arguments, Error, Result, Write};

use crate::sbi;

struct Stdout;

impl Write for Stdout {
    fn write_str(&mut self, s: &str) -> Result {
        for ch in s.chars() {
            sbi::legacy::console_putchar(ch).map_err(|_| Error)?
        }

        Ok(())
    }
}

pub fn print(args: Arguments) -> () {
    Stdout.write_fmt(args).unwrap()
}

#[macro_export]
macro_rules! print {
    ($(, $($arg:tt)+)?) => {{
        $crate::console::print(format_args!($(, $($arg)+)?));
    }};
}

#[macro_export]
macro_rules! println {
    () => {
        $crate::console::print!("\n");
    };
    ($fmt:literal $(, $($arg:tt)+)?) => {
        {
            $crate::console::print(format_args!(concat!($fmt, '\n')$(, $($arg)+)?));
        }
    };
}

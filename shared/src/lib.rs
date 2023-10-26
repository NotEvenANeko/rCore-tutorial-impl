#![no_std]

pub fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }

    unsafe {
        (sbss as *mut u8).write_bytes(0, ebss as usize - sbss as usize);
    }
}

pub mod syscall {
    pub mod call_id {
        pub const WRITE: usize = 64;
        pub const EXIT: usize = 93;
    }

    pub mod fd {
        pub const STDOUT: usize = 1;
    }
}

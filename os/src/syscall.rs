use shared::syscall;

pub fn syscall(id: usize, arg0: usize, arg1: usize, arg2: usize) -> isize {
    match id {
        syscall::call_id::WRITE => call::write(arg0, arg1 as *const u8, arg2),
        syscall::call_id::EXIT => call::exit(arg0 as i32),
        _ => {
            panic!("Unsupported system call {}", id)
        }
    }
}

mod call {
    use core::slice;

    use log::{debug, error, info};
    use shared::syscall;

    use crate::{
        batch::{run_next_app, APP_BASE_ADDRESS, APP_SIZE_LIMIT, USER_STACK},
        print,
    };

    pub fn write(fd: usize, buf: *const u8, len: usize) -> isize {
        if !((APP_BASE_ADDRESS <= buf as usize
            && unsafe { buf.add(len) as usize } < APP_BASE_ADDRESS + APP_SIZE_LIMIT)
            || (USER_STACK.contains(buf as usize) && USER_STACK.contains(buf as usize + len)))
        {
            debug!("try to access forbidden memory {:#x}", buf as usize);
            return -1;
        }

        match fd {
            syscall::fd::STDOUT => {
                let slice = unsafe { slice::from_raw_parts(buf, len) };
                let str = unsafe { core::str::from_utf8_unchecked(slice) };
                print!("{}", str);
                len as isize
            }
            _ => {
                error!("unsupported fd {}", fd);

                -1
            }
        }
    }

    pub fn exit(status: i32) -> ! {
        info!("Application exit with code {}", status);
        run_next_app()
    }
}

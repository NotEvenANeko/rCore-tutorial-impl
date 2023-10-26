use core::arch::asm;

use shared::syscall::call_id;

use crate::println;

pub fn syscall(id: usize, arg0: usize, arg1: usize, arg2: usize) -> isize {
    let mut ret;

    unsafe {
        asm!(
            "ecall",
            in("a7") id,
            inlateout("a0") arg0 => ret,
            in("a1") arg1,
            in("a2") arg2,
        );
    }

    ret
}

pub struct SyscallError;

pub type SyscallResult<T> = Result<T, SyscallError>;

pub fn write(fd: usize, buf: &[u8]) -> SyscallResult<isize> {
    let ret = syscall(call_id::WRITE, fd, buf.as_ptr() as usize, buf.len());

    if ret == -1 {
        Err(SyscallError)
    } else {
        Ok(ret)
    }
}

pub fn exit(status: i32) -> ! {
    syscall(call_id::EXIT, status as usize, 0x0, 0x0);
    unreachable!()
}

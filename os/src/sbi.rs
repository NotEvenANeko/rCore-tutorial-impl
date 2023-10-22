use core::arch::asm;

#[derive(Debug)]
pub enum SBIError {
    Failed,
    NotSupported,
    InvalidParam,
    Denied,
    InvalidAddress,
    AlreadyAvailable,
    AlreadyStarted,
    AlreadyStopped,
}

impl From<isize> for SBIError {
    fn from(value: isize) -> Self {
        match value {
            -1 => SBIError::Failed,
            -2 => SBIError::NotSupported,
            -3 => SBIError::InvalidParam,
            -4 => SBIError::Denied,
            -5 => SBIError::InvalidAddress,
            -6 => SBIError::AlreadyAvailable,
            -7 => SBIError::AlreadyStarted,
            -8 => SBIError::AlreadyStopped,
            _ => panic!("invalid sbi error code {}", value),
        }
    }
}

pub type SBIResult<T> = Result<T, SBIError>;

#[inline(always)]
fn sbi_call(
    eid: i32,
    fid: i32,
    arg0: Option<usize>,
    arg1: Option<usize>,
    arg2: Option<usize>,
) -> SBIResult<isize> {
    let mut error: isize;
    let mut value: isize;

    let arg0 = arg0.unwrap_or(0x0);
    let arg1 = arg1.unwrap_or(0x0);
    let arg2 = arg2.unwrap_or(0x0);

    unsafe {
        asm!(
            "ecall",
            in("a7") eid,
            in("a6") fid,
            inlateout("a0") arg0 => error,
            inlateout("a1") arg1 => value,
            in("a2") arg2
        )
    }

    if error == 0 {
        Ok(value)
    } else {
        Err(SBIError::from(error))
    }
}

pub mod legacy {

    use crate::println;

    use super::{sbi_call, SBIResult};

    pub fn console_putchar(ch: char) -> SBIResult<()> {
        sbi_call(0x01, 0, Some(ch as usize), None, None).map(|_| ())
    }

    pub fn shutdown(reason: Option<u32>) -> ! {
        let _ = sbi_call(
            0x53525354,
            0x0,
            Some(0x0),
            Some(reason.unwrap_or(0x0) as usize),
            None,
        )
        .inspect_err(|err| println!("shutdown failed with code {:?}", err));

        panic!("unreachable")
    }
}

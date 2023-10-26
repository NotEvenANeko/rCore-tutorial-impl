use riscv::register::sstatus::{self, Sstatus, SPP};

#[repr(C)]
#[derive(Debug)]
pub struct TrapContext {
    pub x: [usize; 32],
    pub sstatus: Sstatus,
    pub sepc: usize,
}

impl TrapContext {
    pub fn new_app_init(entry: usize, sp: usize) -> TrapContext {
        let mut sstatus = sstatus::read();
        sstatus.set_spp(SPP::User);

        let mut ctx = TrapContext {
            x: [0; 32],
            sstatus,
            sepc: entry,
        };

        ctx.set_sp(sp);

        ctx
    }

    pub fn set_sp(&mut self, sp: usize) -> &mut TrapContext {
        self.x[2] = sp;
        self
    }
}

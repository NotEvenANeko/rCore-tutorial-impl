use core::cell::{Ref, RefCell, RefMut};

pub struct UPSafeCell<T>(RefCell<T>);

unsafe impl<T> Sync for UPSafeCell<T> {}

impl<T> UPSafeCell<T> {
    pub unsafe fn new(value: T) -> UPSafeCell<T> {
        UPSafeCell(RefCell::new(value))
    }

    pub fn borrow(&self) -> Ref<'_, T> {
        self.0.borrow()
    }

    pub fn borrow_mut(&self) -> RefMut<'_, T> {
        self.0.borrow_mut()
    }
}

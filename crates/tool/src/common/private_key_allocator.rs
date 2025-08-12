use alloy::{
    primitives::{FixedBytes, U256},
    signers::local::PrivateKeySigner,
};

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Default)]
pub struct PrivateKeyAllocator(U256);

impl PrivateKeyAllocator {
    pub fn new_with_value(value: U256) -> Self {
        Self(value)
    }

    pub fn allocate(&mut self) -> PrivateKeySigner {
        self.0 += U256::ONE;
        PrivateKeySigner::from_bytes(&FixedBytes(self.0.to_be_bytes::<32>()))
            .unwrap()
    }

    pub fn into_inner(self) -> U256 {
        self.0
    }
}

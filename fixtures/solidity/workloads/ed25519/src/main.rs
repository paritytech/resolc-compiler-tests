#![no_std]
#![no_main]

use core::convert::TryInto;
use ed25519_dalek::{Signature, Verifier, VerifyingKey};
use uapi::{HostFn, HostFnImpl as api, ReturnFlags};

const CHECK_SELECTOR: [u8; 4] = [0xeb, 0xd1, 0xb9, 0x51];
const CHECK_CALLDATA_LEN: u64 = 4 + 5 * 32;

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
    // `unimp` is guaranteed to trap on the PolkaVM RISC-V target.
    unsafe {
        core::arch::asm!("unimp");
        core::hint::unreachable_unchecked();
    }
}

/// Pallet-revive constructor entry point. This contract has no state.
#[no_mangle]
#[polkavm_derive::polkavm_export]
pub extern "C" fn deploy() {}

/// Solidity-compatible dispatcher for:
///
/// `check(bytes32,bytes32,bytes32,bytes32,bytes9) returns (bool)`
#[no_mangle]
#[polkavm_derive::polkavm_export]
pub extern "C" fn call() {
    if api::call_data_size() != CHECK_CALLDATA_LEN {
        api::return_value(ReturnFlags::REVERT, &[]);
    }

    let mut input = [0_u8; CHECK_CALLDATA_LEN as usize];
    api::call_data_copy(&mut input, 0);

    if input[..4] != CHECK_SELECTOR {
        api::return_value(ReturnFlags::REVERT, &[]);
    }

    let public_key: &[u8; 32] = input[4..36].try_into().unwrap();
    let signature_r: &[u8; 32] = input[36..68].try_into().unwrap();
    let signature_s: &[u8; 32] = input[68..100].try_into().unwrap();
    let message_1: &[u8; 32] = input[100..132].try_into().unwrap();
    // Solidity ABI encodes bytes9 left-aligned in its 32-byte slot.
    let message_2: &[u8; 9] = input[132..141].try_into().unwrap();

    let is_valid = verify_split(
        public_key,
        signature_r,
        signature_s,
        message_1,
        message_2,
    );

    // ABI encoding for bool is a 32-byte word with 0 or 1 in its final byte.
    let mut output = [0_u8; 32];
    output[31] = u8::from(is_valid);
    api::return_value(ReturnFlags::empty(), &output);
}

/// Verify an Ed25519 signature using only code compiled into the contract.
///
/// The arguments intentionally mirror the original Rainbow Solidity workload:
/// `public_key`, `R`, `S`, and a message split into 32-byte and 9-byte pieces.
#[inline]
pub fn verify_split(
    public_key: &[u8; 32],
    signature_r: &[u8; 32],
    signature_s: &[u8; 32],
    message_1: &[u8; 32],
    message_2: &[u8; 9],
) -> bool {
    let Ok(verifying_key) = VerifyingKey::from_bytes(public_key) else {
        return false;
    };

    let mut signature_bytes = [0_u8; 64];
    signature_bytes[..32].copy_from_slice(signature_r);
    signature_bytes[32..].copy_from_slice(signature_s);
    let signature = Signature::from_bytes(&signature_bytes);

    let mut message = [0_u8; 41];
    message[..32].copy_from_slice(message_1);
    message[32..].copy_from_slice(message_2);

    // This matches the Rainbow verifier's equation and canonical-S check.
    // All SHA-512 and Edwards25519 arithmetic happens in Rust.
    verifying_key.verify(&message, &signature).is_ok()
}

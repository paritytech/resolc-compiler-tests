//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xe488E3b459A4CB210dB6f32530f3F32AcE2C1436"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_HASH:1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    function main() public returns(bytes32) {
        bytes32 _blockhash = blockhash(block.number - 1);
        return _blockhash;
    }
}

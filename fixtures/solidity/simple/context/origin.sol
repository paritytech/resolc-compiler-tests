//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x8c5228c6f4f6ca47b280d36f01c2cca8d083a31d"
//!         }
//!       ],
//!       "expected": [
//!         "0x8c5228c6f4f6ca47b280d36f01c2cca8d083a31d"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns (address) {
        address tx_origin = tx.origin;
        return tx_origin;
    }
}

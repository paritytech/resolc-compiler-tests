//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xd6eb61Dcd459768633336BdE6c9E9372De3e6bB0"
//!         }
//!       ],
//!       "expected": [
//!         "0xd6eb61Dcd459768633336BdE6c9E9372De3e6bB0"
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

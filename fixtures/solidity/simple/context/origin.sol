//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x50Ce80B2626688F17428a240828f11643b13e5D4"
//!         }
//!       ],
//!       "expected": [
//!         "0x9292929292929292929292929292929292929292"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns(address) {
        address tx_origin = tx.origin;
        return tx_origin;
    }
}

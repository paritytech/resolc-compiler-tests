//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x06476d48ceCD8FEa2831d616E93513b9bA9D8E95"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := basefee()
        }
    }
}

//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E >=0.8.1"
//!   ],
//!   "cases": [
//!     {
//!       "name": "get",
//!       "inputs": [
//!         {
//!           "method": "greet",
//!           "calldata": [],
//!           "caller": "0xba0bbe55f76f1b89eb18a80c0682cf7a1e7c4c43"
//!         }
//!       ],
//!       "expected": [
//!         "0x20",
//!         "12",
//!         "0x48656c6c6f20576f726c64210000000000000000000000000000000000000000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.4.16 and less than 0.9.0
pragma solidity >=0.4.16;

contract Test {
    string public greet = "Hello World!";
}

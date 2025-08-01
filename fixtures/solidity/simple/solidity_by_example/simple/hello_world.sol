//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E",
//!     "I"
//!   ],
//!   "cases": [
//!     {
//!       "name": "get",
//!       "inputs": [
//!         {
//!           "method": "greet",
//!           "calldata": [],
//!           "caller": "0x76EE60D11Cd54b0C50E4d2Be0561BF0b6B11ffb1"
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

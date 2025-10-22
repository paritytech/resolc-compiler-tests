//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x57ef22b9b9c791850fe16b9fcb79407acd151478"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_true_lesser",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "25",
//!             "42"
//!           ],
//!           "caller": "0xda5cceaf028127e7ce75d841295170c0e7cb4113"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_true_bigger",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "25"
//!           ],
//!           "caller": "0xaca3b09284a9914defe41bfe7f880c7ba2a17c61"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "42"
//!           ],
//!           "caller": "0x3cbbe7e09b229fae527a81cca9d880a48ed33145"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x0130c3d5e6bb374aca10f0026700c671ae82cd1b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(address a, address b) public pure returns(bool) {
        return a != b;
    }
}

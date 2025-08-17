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
//!           "caller": "0x00edf2d16afbc028fb1e879559b07997af79539f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "24",
//!             "8"
//!           ],
//!           "caller": "0xf5d722030d17ca01f2813af9e7be158d7a037997"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "255"
//!           ],
//!           "caller": "0xae3d43ab6fdcd35386db427099ff11aa670ee0f4"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a, uint8 b) public pure returns(uint8) {
        return a & b;
    }
}

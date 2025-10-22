//! {
//!   "cases": [
//!     {
//!       "name": "remainder_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "15"
//!           ],
//!           "caller": "0xfbe1ebd42131e345d3fa11f2bdf4abb196bea5ea"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "remainder_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "22"
//!           ],
//!           "caller": "0x2ec13d6849f0a414b02fc2a912c35a6e43676640"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "remainder_two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "26"
//!           ],
//!           "caller": "0x11f9a1f7be354e0465e6db2712e3d68b9cedbbc8"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8 constant CONST = 3;

    function main(uint32 witness) public pure returns(uint32) {
        return witness / uint32(CONST);
    }
}

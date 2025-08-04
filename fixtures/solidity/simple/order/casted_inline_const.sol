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
//!           "caller": "0x6AD912f4AD2d9D6081B9BA12538eC3d65C5072B2"
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
//!           "caller": "0x67bBD5D3a469d47EA0c7B42eCeC76B60b3144C07"
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
//!           "caller": "0xc42CAD92E232234Ca02fe2cf23C5116f5BA55867"
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
    function main(uint32 witness) public pure returns(uint32) {
        return witness / uint32(3);
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x36eab6ce7fededc098ef98c41e83548a89147131"
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
//!             "42"
//!           ],
//!           "caller": "0x440db3ab842910d2a39f4e1be9e017c6823fb658"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255"
//!           ],
//!           "caller": "0x25ac70ea6f44c4531a7117ea3620fa29cdaaca48"
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
    function main(uint8 a) public pure returns(int128) {
        return int128(int16(uint16(a)));
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x0e6a27a8cc38cd27ec93006a09041c118e82ed5e"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x44483c48afaa76c2856ad8fbbaac9f94e5ac9c55"
//!         }
//!       ],
//!       "expected": [
//!         "20"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255"
//!           ],
//!           "caller": "0xdad30b6e99a80102992ed905bd18b917b492b07f"
//!         }
//!       ],
//!       "expected": [
//!         "64"
//!       ]
//!     },
//!     {
//!       "name": "another",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x4b9689cc9f815523dcf9b337a3ac371f81517a03"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 result;
        assembly {
            switch witness
            case 1 { result := 10 }
            case 2 { result := 20 }
            default {
                switch witness
                case 255 { result := 64 }
                default { result := 42}
            }
        }
        return result;
    }
}

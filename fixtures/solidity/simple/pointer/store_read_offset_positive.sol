//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "84",
//!             "21"
//!           ],
//!           "caller": "0x3a108c0fffd2c90539a080c940794698f50ef9c3"
//!         }
//!       ],
//!       "expected": [
//!         "21"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "42"
//!           ],
//!           "caller": "0x29a67d0ee992604a9b7332c3a2c8a2231fc0068d"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "21",
//!             "84"
//!           ],
//!           "caller": "0x5754fb1f67b5cecbf28acd89e675d34b4fd2c8ed"
//!         }
//!       ],
//!       "expected": [
//!         "84"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint16 _address, uint8 value) public pure returns(uint8 result) {
        uint16 pointer = (_address + 7) * 32;
        assembly {
            mstore(add(pointer, add(0x60, 0x80)), value)
            result := mload(add(pointer, sub(0x140, 0x60)))
        }
    }
}
//! {
//!   "cases": [
//!     {
//!       "name": "element1",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x7d323f030743361ce971bf41533c0728014c9328"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "element2",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x7f4d9f83f2d666440854ec778c91cd222ab04f37"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "element3",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x4cfe70dbe5f7ef48d29fa9abb03692d737274b01"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "element4",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x314a11d9a5ebb3aeb083758945e86935802f415f"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    uint8 constant SIZE = 4;

    function main(uint8 index) public pure returns(uint8) {
        uint8[SIZE] memory array = [1, 2, 3, 4];
        return array[index];
    }
}

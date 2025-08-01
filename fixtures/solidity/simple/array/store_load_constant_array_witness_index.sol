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
//!           "caller": "0x1f3b4EdEAF37B9240aaCf194Ee1434f13caf483a"
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
//!           "caller": "0x4Ad821aC9870a973908eAB089c95Be9e74540819"
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
//!           "caller": "0xE5608e6De95F602ae4b5ED367Bfd53F7Aa5e942D"
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
//!           "caller": "0x249f33F7B2D679a3ee8b9CD51d15A7334e0f3d4A"
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

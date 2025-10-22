//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0x8a5c9a355a0e351e3eb83a1cee2269d871f429e9"
//!         }
//!       ],
//!       "expected": [
//!         "192"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    mapping (uint8 => mapping (uint8 => uint8)) data;

    function main(uint8 value) public returns(uint8) {
        data[5][10] = value * 4;
        data[15][20] = value * 4;
        data[25][30] = value * 4;
        return data[5][10] + data[15][20] + data[25][30];
    }
}

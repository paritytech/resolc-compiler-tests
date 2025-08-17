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
//!           "caller": "0xeb069b37121b304db63e6dab6f5df4d7ca339108"
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

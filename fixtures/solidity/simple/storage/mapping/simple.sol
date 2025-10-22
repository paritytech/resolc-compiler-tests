//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100500",
//!             "16"
//!           ],
//!           "caller": "0xeb069b37121b304db63e6dab6f5df4d7ca339108"
//!         }
//!       ],
//!       "expected": [
//!         "64"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    mapping (uint256 => uint256) data;

    function main(uint256 key, uint256 value) public returns(uint256) {
        data[key] = value * 4;
        return data[key];
    }
}

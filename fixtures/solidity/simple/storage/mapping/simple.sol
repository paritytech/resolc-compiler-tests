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
//!           "caller": "0x0C86602E12032831c1cD11D8AD5ae9D2F317e78A"
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

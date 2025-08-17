//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100500",
//!             "999999",
//!             "16"
//!           ],
//!           "caller": "0x87098e5dbd9b3bee158638a241018d1c42307c90"
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
    mapping (address => mapping (address => uint256)) data;

    function main(address key1, address key2, uint256 value) public returns(uint256) {
        data[key1][key2] = value * 4;
        return data[key1][key2];
    }
}

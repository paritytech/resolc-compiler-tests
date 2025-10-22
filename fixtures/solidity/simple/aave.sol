//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "first",
//!           "calldata": [
//!             "0x3c",
//!             "4"
//!           ],
//!           "caller": "0x1eff47bc3a10a45d4b230b5d10e37751fe6aa718"
//!         }
//!       ],
//!       "expected": [
//!         "0x2c"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function first(
        uint256 data,
        uint256 reserveIndex
    ) public pure returns(uint256) {
        uint256 bit = 1 << reserveIndex;
        data &= ~bit;
        return data;
    }
}
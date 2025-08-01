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
//!           "caller": "0x8C6134AcfdfE43Ae1F1c8E6d9e2aa201C2246942"
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
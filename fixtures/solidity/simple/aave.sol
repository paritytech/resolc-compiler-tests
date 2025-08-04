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
//!           "caller": "0x6C75fd0C634779D6925fbF40F1fe87De30502ff2"
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
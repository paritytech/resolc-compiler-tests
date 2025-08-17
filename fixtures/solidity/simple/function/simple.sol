//! {
//!   "cases": [
//!     {
//!       "name": "_default",
//!       "inputs": [
//!         {
//!           "method": "_default",
//!           "calldata": [
//!             "512"
//!           ],
//!           "caller": "0xbe54d7feba8af9d5b603d7d6d3c78bc98a4109eb"
//!         }
//!       ],
//!       "expected": [
//!         "1024"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function _default(uint256 value) public pure returns(uint256) {
        return value * 2;
    }
}
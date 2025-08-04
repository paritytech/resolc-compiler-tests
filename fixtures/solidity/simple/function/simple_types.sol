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
//!           "caller": "0xa137824B6AcdcA2df58468480b1fD231639af3a8"
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
    function _default(uint248 value) public pure returns(uint248) {
        return value * 2;
    }
}

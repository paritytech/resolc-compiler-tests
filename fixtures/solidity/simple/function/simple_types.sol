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
//!           "caller": "0x37d3ecf372493c2a4c225176ad48603842d52297"
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

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
//!           "caller": "0x636b154798e79501efbd6b76d134684f23313327"
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
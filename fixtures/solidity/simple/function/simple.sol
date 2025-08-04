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
//!           "caller": "0x37d0b961C4d0Fd56a49161eD6A95928a8ffD2eF8"
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
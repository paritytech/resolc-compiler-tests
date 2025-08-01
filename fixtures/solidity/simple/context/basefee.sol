//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xFBF9Cc5445f243e99eCD3e3dFb7aFb1A8ea34beB"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Test {
    function main() public returns(uint) {
        uint _basefee = block.basefee;
        return _basefee;
    }
}

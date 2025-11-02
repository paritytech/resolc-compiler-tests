//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x6824c9580f33e9180a8c14a9eb9f7a6260878478"
//!         }
//!       ],
//!       "expected": [
//!         "$BASE_FEE"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.7;

contract Test {
    function main() public returns (uint) {
        uint _basefee = block.basefee;
        return _basefee;
    }
}

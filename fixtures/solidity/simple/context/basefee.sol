//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x84346b1845436fd98e16f9e829c3011b3a6c5ef7"
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

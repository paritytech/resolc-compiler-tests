//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x552da8d99ce28d466fedd244865a1be5931b6e7f"
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

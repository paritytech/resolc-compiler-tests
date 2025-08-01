//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xaE63FC8498EC5A4E37046a9878bE969B5A025046"
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
    function main() external view returns(uint256 result) {
        assembly {
            result := basefee()
        }
    }
}

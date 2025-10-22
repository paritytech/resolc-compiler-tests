//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x2f9bf0972a56a8d234be0be07de4e6e30a3b4f44"
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
    function main() external view returns (uint256 result) {
        assembly {
            result := basefee()
        }
    }
}

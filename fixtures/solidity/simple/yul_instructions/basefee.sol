//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x72052606745c0309272399e36a5a7018d0519123"
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

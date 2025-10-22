//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xbc32b52c7cd34c2aca5e5f863c4ea6339c7ed332"
//!         }
//!       ],
//!       "expected": [
//!         "Test.address"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := address()
        }
    }
}

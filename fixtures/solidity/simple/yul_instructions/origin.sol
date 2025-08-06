//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x7A5A500105DD131c17C267d6dF7C3b75ced02C52"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000000007A5A500105DD131c17C267d6dF7C3b75ced02C52"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns (uint256 result) {
        assembly {
            result := origin()
        }
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x4d79ff28b58a6c4d0f7e4d3720fa8a9e249ce73c"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000000004d79ff28b58a6c4d0f7e4d3720fa8a9e249ce73c"
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

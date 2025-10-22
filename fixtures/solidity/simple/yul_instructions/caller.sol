//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x9be78c68db0795f423120ecfec183d72ee43c8d7"
//!         }
//!       ],
//!       "expected": [
//!         "0x9be78c68db0795f423120ecfec183d72ee43c8d7"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xddbe7536de04a63c3644e9b071f0299b88678877"
//!         }
//!       ],
//!       "expected": [
//!         "0xddbe7536de04a63c3644e9b071f0299b88678877"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x7860611989a2ab4e4eb4d37674e9726597b5da43"
//!         }
//!       ],
//!       "expected": [
//!         "0x7860611989a2ab4e4eb4d37674e9726597b5da43"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x57fdb66d5bf410bc76c745fa7f5e66934a6307b0"
//!         }
//!       ],
//!       "expected": [
//!         "0x57fdb66d5bf410bc76c745fa7f5e66934a6307b0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external payable returns (uint256 result) {
        assembly {
            result := caller()
        }
    }
}

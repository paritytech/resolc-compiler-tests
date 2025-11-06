//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0x69bc86afc4eb4dee182e42d39845bf94948742bb"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.6;

contract Test {
    fallback(bytes calldata) external returns(bytes memory) {
        return abi.encodePacked(uint256(42));
    }
}

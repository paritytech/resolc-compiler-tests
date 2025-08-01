//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0x092CFB6a5c74200582b86617C192C4daF3417877"
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

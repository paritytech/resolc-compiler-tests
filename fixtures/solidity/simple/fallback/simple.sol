//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0x73d434bc50dd1774b9a5337a2405767d6d8db894"
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

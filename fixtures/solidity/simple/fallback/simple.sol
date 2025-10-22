//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [],
//!           "caller": "0xbc0190e783bbd43f634079c38dda56958ab5d2c7"
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

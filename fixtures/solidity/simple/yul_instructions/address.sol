//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x26a1508a3bec66f982affded3c80e65fb9e21956"
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

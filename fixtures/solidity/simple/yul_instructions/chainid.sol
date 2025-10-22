//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x703f4c886e4683874e0b6084ae8b09224b64a12d"
//!         }
//!       ],
//!       "expected": [
//!         "$CHAIN_ID"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.14;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := chainid()
        }
    }
}

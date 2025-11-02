//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xbd4ff8151333e0efb07a54ae20597060dc037bae"
//!         }
//!       ],
//!       "expected": [
//!         "$BLOCK_TIMESTAMP"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns(uint256 result) {
        assembly {
            result := timestamp()
        }
    }
}

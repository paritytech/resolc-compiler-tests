//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x8ddef51d7020e099fdaa770e70ae7edb929479ab"
//!         }
//!       ],
//!       "expected": [
//!         "$DIFFICULTY"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18;

contract Test {
    function main() external view returns (uint256 result) {
        result = block.prevrandao;
    }
}

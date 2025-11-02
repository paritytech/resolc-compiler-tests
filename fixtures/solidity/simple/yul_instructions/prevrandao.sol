//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xd4dbeedca9ce0df9625023203dbcb7f49d51ec3c"
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

//! {
//!   "modes": [
//!     "Y =0.8.17"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x2D73eA4fD1fDA09aA259b09e4E817431f9329C4f"
//!         }
//!       ],
//!       "expected": [
//!         "$DIFFICULTY"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16 <=0.8.17;

contract Test {
    function main() external view returns (uint256 result) {
        assembly {
            result := difficulty()
        }
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x7860611989a2ab4e4eb4d37674e9726597b5da43"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external pure returns(uint256) {
        assembly {
            stop()
        }
        return 5;
    }
}

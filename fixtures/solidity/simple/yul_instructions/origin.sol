//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x7fd368356534540d47953aefcbe5fa0abcb576b7"
//!         }
//!       ],
//!       "expected": [
//!         "0x0000000000000000000000007fd368356534540d47953aefcbe5fa0abcb576b7"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external view returns (uint256 result) {
        assembly {
            result := origin()
        }
    }
}

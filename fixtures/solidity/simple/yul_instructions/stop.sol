//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x41ce502d07acf45c4f396407875ac743610fe891"
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

//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x3Ce0726e1B07f1EA1A302EA707501cD83C961e6f"
//!         }
//!       ],
//!       "expected": [
//!         "55"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint256 constant LIMIT = 10;

    function main() public pure returns(uint256) {
        uint256 sum = 0;
        for(uint256 i = 0; i <= LIMIT; i++) {
            sum += i;
        }
        return sum;
    }
}

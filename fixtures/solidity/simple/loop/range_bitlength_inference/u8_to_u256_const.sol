//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xC4B9bC1492e4B0d5Ed7497e3Fb7E462681DbbD2C"
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

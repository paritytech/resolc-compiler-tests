//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0x35fead29dda6cc66c0e7dbbf8d078e8ad2330d40"
//!         }
//!       ],
//!       "expected": [
//!         "89"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "14"
//!           ],
//!           "caller": "0xf928084780786394987eda41fa44cf41c99f9118"
//!         }
//!       ],
//!       "expected": [
//!         "233"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0xa819b93d288d6aa14634f51bbcebde5bd5ad41df"
//!         }
//!       ],
//!       "expected": [
//!         "610"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 n) public pure returns(uint64) {
        uint64 value1 = 0;
        uint64 value2 = 1;
        uint64 fibo = value1;

        for(uint8 i = 1; i <= n - 2; i++) {
            fibo = value1 + value2;
            value1 = value2;
            value2 = fibo;
        }

        return fibo;
    }
}
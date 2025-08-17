//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "first",
//!           "calldata": [],
//!           "caller": "0x7e5f4552091a69125d5dfcb7b8c2659029395bdf"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "second",
//!           "calldata": [],
//!           "caller": "0x2b5ad5c4795c026514f8317c7a215e218dccd6cf"
//!         }
//!       ],
//!       "expected": [
//!         "99"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function first() public pure returns(uint64) {
        uint64 result = 42;
        return result;
    }

    function second() public pure returns(uint256) {
        uint256 result = 99;
        return result;
    }
}

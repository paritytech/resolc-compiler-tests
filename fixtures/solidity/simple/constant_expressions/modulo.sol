//! {
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "46"
//!           ],
//!           "caller": "0xbf0cf23d9Cc41DD02e2e2b8dBD7903204Ef29156"
//!         }
//!       ],
//!       "expected": [
//!         "7",
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "test2",
//!       "inputs": [
//!         {
//!           "method": "test2",
//!           "calldata": [
//!             "17"
//!           ],
//!           "caller": "0x06FBcE1A39466D40Ad0f72fA41085259A43C28Ce"
//!         }
//!       ],
//!       "expected": [
//!         "5",
//!         "9"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function test(uint256 a) public pure returns (uint, uint) {
        return (
            46/13%3*13,
            a/13%3*13
        );
    }

    function test2(uint256 a) public pure returns (uint, uint) {
        return (
            13%(17/3)*3,
            13%(a/3)*3
        );
    }
}

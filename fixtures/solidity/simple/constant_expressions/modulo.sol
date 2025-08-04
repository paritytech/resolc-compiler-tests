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
//!           "caller": "0xbC277d1073a2de9E45AA40869f7D4565023BA00A"
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
//!           "caller": "0x2cB6724328030ea3118b766B35e596F9a8E4B1BA"
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

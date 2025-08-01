//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [
//!             "32",
//!             "3",
//!             "1",
//!             "2",
//!             "3"
//!           ],
//!           "caller": "0xe75589d87B47AD83c5f51780ecB25bc4891Fb05E"
//!         }
//!       ],
//!       "expected": [
//!         "3",
//!         "2",
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-284/error-with-memory-values-in-params

pragma solidity >=0.4.16;

contract Test {
    function f(bytes32[] memory data) public pure returns(bytes32, bytes32, bytes32) {
        return (data[2], data[1], data[0]);
    }
}
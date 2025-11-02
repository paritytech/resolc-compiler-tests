//! {
//!   "cases": [
//!     {
//!       "name": "testCompileVsRuntime",
//!       "inputs": [
//!         {
//!           "method": "testCompileVsRuntime",
//!           "calldata": [
//!             "7",
//!             "3"
//!           ],
//!           "caller": "0x6c4bbd68adce006372ae8d5259de2010ef47b873"
//!         }
//!       ],
//!       "expected": [
//!         "783",
//!         "39"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function testCompileVsRuntime (uint a, uint b) public view returns (uint, uint) {
          return (
            ((7 / 11 + 3 / 13) * 22 + 1) * 39,
            ((a / 11 + b / 13) * 22 + 1) * 39
          );
        }
}

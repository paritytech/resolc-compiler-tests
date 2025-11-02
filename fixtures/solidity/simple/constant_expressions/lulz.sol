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
//!           "caller": "0xd4b3521a23cd5fea8ba7023101b5f68f035cb5db"
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

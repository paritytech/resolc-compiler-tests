//! {
//!   "cases": [
//!     {
//!       "name": "testCompileVsRuntime",
//!       "inputs": [
//!         {
//!           "method": "testCompileVsRuntime",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xd6Ec6190edEcd36e6A64605DFDd642917FDa9bCA"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function testCompileVsRuntime(uint a) public pure returns (uint, uint) {
        return (
            1/2*2,
            a/2*2
        );
    }
}

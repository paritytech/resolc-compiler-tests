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
//!           "caller": "0x7d3b5789b5e478233b74487406f6e2dc5a58d2c5"
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

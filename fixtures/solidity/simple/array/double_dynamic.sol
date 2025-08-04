//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x7F868818d9B30Cc62F38850e3c5D4459542f2393"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-215/solidity-dynamic-array-length-bug

pragma solidity >=0.4.16;

contract Test {
    function f() public returns (uint256) {
        uint256[][] memory x = new uint256[][](42);
        assert(x[0].length == 0);
        return 0;
    }
}

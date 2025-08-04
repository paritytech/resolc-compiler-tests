//! {
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x6301893039FFf1208D1dBe2de45659ffbC34BA79"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-204/2-dimensional-array-bug

pragma solidity >=0.4.16;

contract Test {
    function test() public pure returns(uint64) {
        uint64[1][1] memory a;
        a[0][0];
        return 1;
    }
}
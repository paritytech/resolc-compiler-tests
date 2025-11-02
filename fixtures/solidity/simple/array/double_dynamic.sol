//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x39d856693e4186b669a21cb24373e28d4f74a616"
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

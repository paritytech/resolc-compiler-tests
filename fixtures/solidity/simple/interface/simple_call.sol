//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [],
//!           "caller": "0x7099c4e526044061cfe18a0dc25461722af474b0"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-581/require-in-external-call-failure-for-b1-b3

pragma solidity >=0.6.0;

contract Test {
    function f() public pure {
        require(true);
    }

    function entry() public view {
        this.f();
    }
}

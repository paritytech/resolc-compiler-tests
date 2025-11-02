//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [],
//!           "caller": "0x1c9902e79f6af5ced1d6422dac0bf9b086baa253"
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

//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x61B40C1FB558c24c277B4322a0dF3b190B354bCf"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x08C379A000000000000000000000000000000000000000000000000000000000",
//!           "0x0000002000000000000000000000000000000000000000000000000000000000",
//!           "0x0000000c66697273742072657665727400000000000000000000000000000000",
//!           "0x0000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.24;

contract Test {
    function f() public {
        require(f1() && f2(), "main revert");
    }

    function f1() public returns (bool) {
        revert("first revert");
        return true;
    }

    function f2() public returns (bool) {
        revert("second revert");
        return true;
    }
}

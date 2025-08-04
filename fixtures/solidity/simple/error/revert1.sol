//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xb2D593c7cD1956Cf8909f386E1617d6E14a7EE92"
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

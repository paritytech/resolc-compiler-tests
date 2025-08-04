//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "32"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0x605A2f1983bcCF6ED26322e1e4331ADb895495C5"
//!         },
//!         {
//!           "method": "_get",
//!           "calldata": [],
//!           "caller": "0x605A2f1983bcCF6ED26322e1e4331ADb895495C5"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-296/bug-with-constructor

pragma solidity >=0.7.0;

contract Test {
    uint public a;

    // if remove constructor or param - it works
    constructor(uint b) {
        a = 0;
    }

    function _get() public view returns(uint) {
        return a;
    }
}
//! {
//!   "cases": [
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0xd2453cd9da802a44592ed4945defe2683631a373"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0xd2453cd9da802a44592ed4945defe2683631a373"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// Report https://linear.app/matterlabs/issue/CPR-285/bug-with-dynamic-arrays

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

contract Test {
    uint[] public a; // with static array works

    constructor() { // if replace this with function(not constructor) - it works
        a.push(1);
    }

    function get() public view returns(uint) {
        return a[0];
    }
}
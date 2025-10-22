//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x3bc8287f1d872df4217283b7920d363f13cf39d8"
//!         }
//!       ],
//!       "expected": [
//!         "0x00000000000000000000000000000000000000ff"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.8;

contract Test {
    address public immutable a2 = address(0xff);
    address public immutable a1;

    constructor() {
        a1 = a2;
    }

    function f() public returns (address) {
        return a1;
    }
}

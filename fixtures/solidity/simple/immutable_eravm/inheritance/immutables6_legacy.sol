//! {
//!   "modes": [
//!     "E"
//!   ],
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x5a2645f13B425cF35e5F4f00119d857ca1CcC6b3"
//!         }
//!       ],
//!       "expected": [
//!         "8",
//!         "8",
//!         "8"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.20;

contract TestC {
    uint256 immutable z;
    uint s = 8;

    constructor(uint _val) {
        z = _val;
    }

    function fC() public returns (uint256) {
        return s;
    }
}

contract TestB is TestC {
    uint256 immutable y;

    constructor(uint _val) TestC(_val) {
        y = fC();
    }

    function fB() public returns (uint256) {
        return y;
    }
}

contract Test is TestC, TestB {
    uint256 immutable x;

    constructor() TestB(fC()) {
        x = z;
    }

    function f() public returns (uint256, uint256, uint256) {
        return (x, y, z);
    }
}

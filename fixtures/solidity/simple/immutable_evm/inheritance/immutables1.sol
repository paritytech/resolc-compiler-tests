//! {
//!   "targets": [
//!     "evm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xFb6f7feD3a52BE8d0f4a82d0aE79a79EF5E7edb1"
//!         }
//!       ],
//!       "expected": [
//!         "5",
//!         "6",
//!         "7"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.20;

contract TestC {
    uint256 immutable z;

    constructor() {
        z = 7;
    }

    function fC() public returns (uint256) {
        return z;
    }
}

contract TestB is TestC {
    uint256 immutable y;

    constructor() {
        y = 6;
    }

    function fB() public returns (uint256) {
        return y;
    }
}

contract Test is TestC, TestB {
    uint256 immutable x;

    constructor() {
        x = 5;
    }

    function f() public returns (uint256, uint256, uint256) {
        return (x, y, z);
    }
}

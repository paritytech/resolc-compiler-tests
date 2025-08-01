//! {
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
//!           "caller": "0x76B13fE7230D737f3f2384D51A37598994b0EFd0"
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

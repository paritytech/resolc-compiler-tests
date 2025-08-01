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
//!           "caller": "0x3Bc5ae281F48f7Fd9F7eB712A1574d772131fa99"
//!         }
//!       ],
//!       "expected": [
//!         "7",
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
        x = fC();
    }

    function f() public returns (uint256, uint256, uint256) {
        return (x, y, z);
    }
}

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
//!           "caller": "0xd87cFD42cc999Dc10E9b6F202E21C9cdEa4e8f01"
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

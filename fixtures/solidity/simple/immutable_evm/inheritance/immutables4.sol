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
//!           "caller": "0x83f6729a98485882c02d79a6fc386910fbc3889b"
//!         }
//!       ],
//!       "expected": [
//!         "0",
//!         "0",
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

    constructor(uint _val) {
        y = _val;
    }

    function fB() public returns (uint256) {
        return y;
    }
}

contract Test is TestC, TestB {
    uint256 immutable x;

    constructor() TestB(fB()) {
        x = fB();
    }

    function f() public returns (uint256, uint256, uint256) {
        return (x, y, z);
    }
}

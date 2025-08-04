//! {
//!   "modes": [
//!     "E"
//!   ],
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
//!           "caller": "0xEc199510B70513FBEB8fc306a3c63c9F88d87fb1"
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

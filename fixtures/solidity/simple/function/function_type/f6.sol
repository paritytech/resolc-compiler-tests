//! {
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xDa4ed9a9d34b6f41142C8DFd1eA8556146396Fb3"
//!         }
//!       ],
//!       "expected": [
//!         "100"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.20;

contract Test {
    uint a = 10;
    TestA testA;

    constructor() {
        testA = new TestA();
        try testA.fA(this.f2) returns (uint256 r) {
            a = r;
        } catch {
            a = 100;
        }
    }

    function f() public returns (uint256) {
        return a;
    }

    function f2() public returns (uint256) {
        return 2;
    }
}

contract TestA {
    uint256 x = 1;

    function fA(
        function() external returns (uint256) _f
    ) public returns (uint256) {
        return x + _f();
    }
}

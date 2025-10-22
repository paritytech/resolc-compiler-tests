//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x40ca26f159a74b58b7b6885f447e09ae1f384524"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

interface ITest2 {
    function f1() external;
}

contract Test {
    Test2 ins;

    constructor() public {
        ins = new Test2();
    }

    function main() public returns (bool) {
        try ITest2(address(ins)).f1() {
            return true;
        } catch {
            return false;
        }
    }
}

contract Test2 {
    event f1();
}

//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "10 wei",
//!           "caller": "0x8702e3BD1Aba78bE78a406E6910e29d188e424d4"
//!         }
//!       ],
//!       "expected": [
//!         "7",
//!         "3"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0;

contract Test {
    Test2 ins;

    constructor() {
        ins = new Test2();
    }

    function main() external payable returns (uint256, uint256) {
        ins.f2{value: f1a()}();
        return (address(this).balance, address(ins).balance);
    }

    function f1a() public returns (uint) {
        ins.f2{value: 2}();
        return 1;
    }
}

contract Test2 {
    function f2() public payable {}
}
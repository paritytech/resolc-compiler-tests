//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "10 wei",
//!           "caller": "0x00Fd0E84e90eD92a93c6606C028De2a56430ecD7"
//!         }
//!       ],
//!       "expected": [
//!         "7",
//!         "3",
//!         "2"
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

    function main() external payable returns (uint256, uint256, uint256) {
        ins.f2{value: ins.f3{value: 2}()}();
        return (address(this).balance, address(ins).balance, ins.firstBalance());
    }
}

contract Test2 {
    uint public firstBalance;
    function f2() public payable {}

    function f3() public payable returns (uint256) {
        firstBalance = address(this).balance;
        return 1;
    }
}
//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "10 wei",
//!           "caller": "0xad91cf5192f6a18425a6cdc8ce281e3d023fe54d"
//!         }
//!       ],
//!       "expected": [
//!         "10",
//!         "0",
//!         "10"
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
        address(ins).call{value: 10}("");
        return (
            ins.f5{value: 10, gas: f1d()}(),
            address(this).balance,
            address(ins).balance
        );
    }

    function f1d() public returns (uint256) {
        ins.f6();
        return 1000000;
    }

    receive() external payable {}
}

contract Test2 {
    function f5() public payable returns (uint256) {
        return msg.value;
    }

    function f6() public {
        msg.sender.call{value: 10}("");
    }

    receive() external payable {}
}
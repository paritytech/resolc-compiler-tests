//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xBF383b5C1cBa9F882e6d3E51074950d72EF2199e"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "2",
//!         "5"
//!       ]
//!     }
//!   ]
//! }
// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    uint256[3] public arr;

    function f() public returns (uint256[3] memory) {
        arr = [1, f1(), arr[1]];
        return arr;
    }

    function f1() public returns (uint256) {
        arr = [4, 5];
        return 2;
    }
}

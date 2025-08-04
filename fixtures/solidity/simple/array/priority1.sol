//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x0c0b9c35E18EA589614dbD3ed2A1fF9B84Fa144b"
//!         }
//!       ],
//!       "expected": [
//!         "0",
//!         "2",
//!         "3"
//!       ]
//!     }
//!   ]
//! }
// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    uint256[3] public arr;
    uint256 public a;

    function f() public returns (uint256[3] memory) {
        arr = [a, f1(), 3];
        return arr;
    }

    function f1() public returns (uint256) {
        a = 5;
        return 2;
    }
}

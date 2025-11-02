//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x5bcd3cc5310b44aa34501d4150ec9dd5a0fabc37"
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

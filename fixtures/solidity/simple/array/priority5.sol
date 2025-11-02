//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x093ffe8e9ccd9c7c7976dd3d59abdfc38f9f2693"
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

//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x60406a5FE256B5A7c7bE4B250D674a5AF97bD38A"
//!         }
//!       ],
//!       "expected": [
//!         "1",
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

    function f() public returns (uint256[3] memory) {
        arr = [1, f1(), 3];
        return arr;
    }

    function f1() public returns (uint256) {
        arr = [4, 5, 6];
        return 2;
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xf862FCEA9994398d0Da2e90F15a913e223cACFD8"
//!         }
//!       ],
//!       "expected": [
//!         "0x20",
//!         "0x03",
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
    uint256[] public arr;

    function f() public returns (uint256[] memory) {
        arr = [1, f1(), 3];
        return arr;
    }

    function f1() public returns (uint256) {
        arr = [4, 5, 6, 7, 8];
        return 2;
    }
}

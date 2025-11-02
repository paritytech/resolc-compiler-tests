//! {
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x22a0e74e3d1d4cdadcc2d707b58d40706328c3cf"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "test2",
//!       "inputs": [
//!         {
//!           "method": "test2",
//!           "calldata": [],
//!           "caller": "0xdf00c4c7e76cb484af5a9dcdf8d86e47206e2e41"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function test() public pure returns (bool) {
        return !false || true && false;
    }

    function test2() public pure returns (bool) {
        return !false == true != true;
    }
}

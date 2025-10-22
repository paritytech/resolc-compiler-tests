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
//!         "0x10000000000000000000000001"
//!       ]
//!     },
//!     {
//!       "name": "shifts",
//!       "inputs": [
//!         {
//!           "method": "shifts",
//!           "calldata": [],
//!           "caller": "0xdf00c4c7e76cb484af5a9dcdf8d86e47206e2e41"
//!         }
//!       ],
//!       "expected": [
//!         "0x722000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function test() public pure returns (uint128) {
        return ~0&1<<100|257^256;
    }

    function shifts() public pure returns (uint256) {
        return 0x722DDB>>12<<1000>>988;
    }
}

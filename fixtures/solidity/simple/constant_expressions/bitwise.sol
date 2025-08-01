//! {
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x0316D9De7585b73d45DC184f13274f5387fd3E0c"
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
//!           "caller": "0xfa924BDac4Ff2E4016EaD9Cf67A1f561CDFc5794"
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

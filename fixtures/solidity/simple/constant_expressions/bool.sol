//! {
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x394045dd0a3765b3adde20c3f2f4dad2a1d2f455"
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
//!           "caller": "0x36e34c283310aee6d7a2f7554efe325a27918b27"
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

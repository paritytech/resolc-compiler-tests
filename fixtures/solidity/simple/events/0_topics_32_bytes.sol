//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x2a16c1caa1ff1f246baf58b8d50855fdf30bbeea"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "1234567890"
//!             ]
//!           }
//!         ]
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21;

contract Test {
    event Event(uint256) anonymous;

    function test() public {
        emit Event(1234567890);
    }
}

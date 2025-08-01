//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x656B65DDa61E16c97B0c6ae8eebCE4C1fb02bF4D"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "1234567890",
//!               "1234567891",
//!               "1234567892"
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
    event Event(uint256, uint256, uint256) anonymous;

    function test() public {
        emit Event(1234567890, 1234567891, 1234567892);
    }
}

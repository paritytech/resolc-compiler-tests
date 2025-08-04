//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x0dE8B3a00BD7F35D6992aFF1564Fd630a2e208eF"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "9876543210",
//!               "9876543211",
//!               "9876543212",
//!               "9876543213"
//!             ],
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
    event Event(uint256 indexed, uint256 indexed, uint256 indexed, uint256 indexed, uint256) anonymous;

    function test() public {
        emit Event(9876543210, 9876543211, 9876543212, 9876543213, 1234567890);
    }
}

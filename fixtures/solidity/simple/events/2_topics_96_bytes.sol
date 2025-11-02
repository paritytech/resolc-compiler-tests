//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0xbe9f246e0641da71fbb89c81d70b1eb05deb8b8d"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "9876543210",
//!               "9876543211"
//!             ],
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
    event Event(uint256 indexed, uint256 indexed, uint256, uint256, uint256) anonymous;

    function test() public {
        emit Event(9876543210, 9876543211, 1234567890, 1234567891, 1234567892);
    }
}

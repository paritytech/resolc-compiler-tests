//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0x70ab2FBE88ecADD2e5eF08708376F3bE98452612"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "9876543210",
//!               "9876543211",
//!               "9876543212"
//!             ],
//!             "values": [
//!               "1234567890",
//!               "1234567891"
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
    event Event(uint256 indexed, uint256 indexed, uint256 indexed, uint256, uint256) anonymous;

    function test() public {
        emit Event(9876543210, 9876543211, 9876543212, 1234567890, 1234567891);
    }
}

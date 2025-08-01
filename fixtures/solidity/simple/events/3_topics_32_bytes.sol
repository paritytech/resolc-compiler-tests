//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [],
//!           "caller": "0xc41215a31b2014336Ee56cd0f238F3b420785e93"
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
    event Event(uint256 indexed, uint256 indexed, uint256 indexed, uint256) anonymous;

    function test() public {
        emit Event(9876543210, 9876543211, 9876543212, 1234567890);
    }
}

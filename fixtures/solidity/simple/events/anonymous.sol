//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "0x111111111"
//!           ],
//!           "caller": "0x44b31452836c6052d9fe6013859ed4e0d5287601"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": []
//!           }
//!         ]
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-693/event-test-with-unused-parameter-long-execution

pragma solidity >=0.4.21;

contract Test {
    event Empty() anonymous;

    function test(uint256 number) public {
        emit Empty();
    }
}

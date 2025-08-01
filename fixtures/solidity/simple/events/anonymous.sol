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
//!           "caller": "0xA43c20e2EDf1C2c9667cf64160915Bd1a1BEA3d5"
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

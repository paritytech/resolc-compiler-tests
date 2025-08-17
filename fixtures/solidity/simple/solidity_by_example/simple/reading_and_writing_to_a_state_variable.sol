//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0xab49d0d40f2d8ae08769c57f787564838f33154e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "7823982309234984387823489290492314"
//!           ],
//!           "caller": "0x9cad951a57d174a8f0a425d5ee6920415165fdaa"
//!         },
//!         {
//!           "method": "num",
//!           "calldata": [],
//!           "caller": "0x9cad951a57d174a8f0a425d5ee6920415165fdaa"
//!         }
//!       ],
//!       "expected": [
//!         "7823982309234984387823489290492314"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "34342312412341234"
//!           ],
//!           "caller": "0xa0b2b74d28fd9f31474aec78fb6acc487722d96c"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "-82349283489238"
//!           ],
//!           "caller": "0xa0b2b74d28fd9f31474aec78fb6acc487722d96c"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0xa0b2b74d28fd9f31474aec78fb6acc487722d96c"
//!         }
//!       ],
//!       "expected": [
//!         "-82349283489238"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    // State variable to store a number
    uint public num;

    // You need to send a transaction to write to a state variable.
    function set(uint _num) public {
        num = _num;
    }

    // You can read from a state variable without sending a transaction.
    function get() public view returns (uint) {
        return num;
    }
}


//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x1A415b3F48672189cDB03e92F341d890f935856A"
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
//!           "caller": "0x294e1E9eA32bf6d74a2860B7473118eb590B6d91"
//!         },
//!         {
//!           "method": "num",
//!           "calldata": [],
//!           "caller": "0x294e1E9eA32bf6d74a2860B7473118eb590B6d91"
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
//!           "caller": "0x2D02daFd61403d1e166Ca820A710708eaE49446C"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "-82349283489238"
//!           ],
//!           "caller": "0x2D02daFd61403d1e166Ca820A710708eaE49446C"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x2D02daFd61403d1e166Ca820A710708eaE49446C"
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


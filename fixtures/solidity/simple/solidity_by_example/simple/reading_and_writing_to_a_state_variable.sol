//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0x1A68Fa6AF492aE35634C22Fd321a5aE07605231B"
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
//!           "caller": "0xebC9b76416706db8D3459Eb6F6904DEc5118F9dB"
//!         },
//!         {
//!           "method": "num",
//!           "calldata": [],
//!           "caller": "0xebC9b76416706db8D3459Eb6F6904DEc5118F9dB"
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
//!           "caller": "0xdd9d6c7F96ccFf7128C7F976E86927993E747344"
//!         },
//!         {
//!           "method": "set",
//!           "calldata": [
//!             "-82349283489238"
//!           ],
//!           "caller": "0xdd9d6c7F96ccFf7128C7F976E86927993E747344"
//!         },
//!         {
//!           "method": "get",
//!           "calldata": [],
//!           "caller": "0xdd9d6c7F96ccFf7128C7F976E86927993E747344"
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


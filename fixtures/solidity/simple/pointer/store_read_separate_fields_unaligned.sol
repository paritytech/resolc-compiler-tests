//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "2",
//!             "3"
//!           ],
//!           "caller": "0x83e658a045a4082526efc8d37072e3a5ff09f1e3"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "21",
//!             "84"
//!           ],
//!           "caller": "0xd4e6d112ad5517797bb6d5eaedcfa16af7a8578b"
//!         }
//!       ],
//!       "expected": [
//!         "147"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "99",
//!             "66",
//!             "33"
//!           ],
//!           "caller": "0x7f582b149845d5767e61a79f16f662b72fdaa880"
//!         }
//!       ],
//!       "expected": [
//!         "198"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    struct Data {
        uint32 a;
        uint32 b;
        uint32 c;
    }

    function main(uint32 a, uint32 b, uint32 c) public pure returns(uint32 result) {
        Data memory data = Data(a, b, c);
        assembly {
            result := add(mload(data), add(mload(add(data, 0x20)), mload(add(data, 0x40))))
        }
    }
}

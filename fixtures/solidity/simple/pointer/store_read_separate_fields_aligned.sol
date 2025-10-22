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
//!           "caller": "0x05a761d8d7c0b65d5df55d357946978872447c6d"
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
//!           "caller": "0x0248fee0adc2fe831e49504e854ea2d9fe410fb5"
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
//!           "caller": "0x08e923748dfb84cddbcf0f4cafb2132f43e5740e"
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
        uint256 a;
        uint256 b;
        uint256 c;
    }

    function main(uint256 a, uint256 b, uint256 c) public pure returns(uint256 result) {
        Data memory data = Data(a, b, c);
        assembly {
            result := add(mload(data), add(mload(add(data, 0x20)), mload(add(data, 0x40))))
        }
    }
}
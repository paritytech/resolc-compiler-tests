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
//!           "caller": "0x2151AA3dDdc38d80D1951A9CeDb2a526A04C4A26"
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
//!           "caller": "0xAd0B58A7feC79ae24bF99785b8548A5665531FfE"
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
//!           "caller": "0x923e4c4973CecDde952C44212263560a8D224f5E"
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

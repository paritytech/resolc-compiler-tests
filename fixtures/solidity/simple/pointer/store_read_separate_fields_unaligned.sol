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
//!           "caller": "0x8463C9046C6d86c6c3e95f4a9ca69Af743ba6e65"
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
//!           "caller": "0x470e35F4B175Aec252c69278BF2f7Ba68d31e748"
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
//!           "caller": "0xC256Dc2136cA96Dc78B01b33894aCDE7A090DF4f"
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

//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "84",
//!             "21"
//!           ],
//!           "caller": "0xe721EDebE378d1172Eee38cBaC9ADd80b2153927"
//!         }
//!       ],
//!       "expected": [
//!         "21"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "42"
//!           ],
//!           "caller": "0x997A7AA29f21F6B017eF712CbABA7Fed553d50f5"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "21",
//!             "84"
//!           ],
//!           "caller": "0x7f49455C75E2dc445f9400b3aaC4B4409052Cd6D"
//!         }
//!       ],
//!       "expected": [
//!         "84"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint16 _address, uint8 value) public pure returns(uint8 result) {
        uint16 pointer = (_address + 7) * 32;
        assembly {
            mstore(add(pointer, add(0x60, 0x80)), value)
            result := mload(add(pointer, sub(0x140, 0x60)))
        }
    }
}
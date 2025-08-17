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
//!           "caller": "0x237b5431e14834ea9b54b92ac95f8b0d98a0c4e4"
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
//!           "caller": "0xcc2b56dbbc99dfce7a70514cfb8b667c55f193a1"
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
//!           "caller": "0x64c8ce16c52cd01b85ff4d7e3b8f1855c1d80f0b"
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
    struct Wrapper {
        uint16 pointer;
    }

    function main(uint16 _address, uint8 value) public pure returns(uint8 result) {
        Wrapper memory wrapper = Wrapper(_address * 32);
        assembly {
            mstore(mload(wrapper), value)
            result := mload(mload(wrapper))
        }
    }
}
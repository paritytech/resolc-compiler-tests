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
//!           "caller": "0xbe4588401919Fa191C3353FB0462Fd52b83D1CfD"
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
//!           "caller": "0x73933FAC9450Bcc4C2ceb803E9F1a5F4Cc631BFC"
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
//!           "caller": "0x2958Ec4A1f4f97d4189cb34d7baE93a92EbE2644"
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
        uint16 pointer = _address * 32;
        assembly {
            mstore(pointer, value)
            result := mload(pointer)
        }
    }
}
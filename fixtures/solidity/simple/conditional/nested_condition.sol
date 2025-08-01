//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x36A02bfDAB560669798C92000B04eECF5c6b5ff2"
//!         }
//!       ],
//!       "expected": [
//!         "25"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x1d0ee5B5e229dc23e469A4274949978ba95a7AeE"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 tmp;
        if (witness == 1) {
            tmp = 2;
        } else {
            tmp = 3;
        }
        if (tmp == 2) {
            return 25;
        } else {
            return 42;
        }
    }
}

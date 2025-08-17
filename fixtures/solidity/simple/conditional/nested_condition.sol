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
//!           "caller": "0x6b136fb82fe2520d682a55e788394ef503a30868"
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
//!           "caller": "0x0b74a0740a984e2f314f8ff721a288bded6647b2"
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

//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x232799b4e150892860c5830c0ccd49972a56b173"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x0aa5a8e434a04fd3a8a31d39a316c99c5f322746"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0xc7eddf669a6d5fd43465ef56851f5c2dfeefc965"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "four",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x573e4d05ca7705092c1bc0371f194a7bfd8dd247"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(bool[3] memory gates) public pure returns(uint8) {
       if (gates[0]) {
           return 1;
       } else if (gates[1]) {
           if (gates[2]) {
               return 2;
           } else {
               return 3;
           }
       } else {
           return 4;
       }
    }
}

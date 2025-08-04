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
//!             "0",
//!             "5"
//!           ],
//!           "caller": "0x98AC57AcdCbfE543762588d5B6eE6CA8A7155b4e"
//!         }
//!       ],
//!       "expected": [
//!         "25"
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
//!             "1",
//!             "5"
//!           ],
//!           "caller": "0xACB4543fCD0ea6855F2B1F7f70dA3FB85B621307"
//!         }
//!       ],
//!       "expected": [
//!         "50"
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
//!             "0",
//!             "5"
//!           ],
//!           "caller": "0x0f35C834e81f2116E7294433A1CCD889710003e2"
//!         }
//!       ],
//!       "expected": [
//!         "75"
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
//!             "0",
//!             "5"
//!           ],
//!           "caller": "0x3B150d0bae3F68b8c75ed8fcab41f93953338008"
//!         }
//!       ],
//!       "expected": [
//!         "100"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(bool[3] memory gates, uint8 mutated) public pure returns(uint8) {
        if (gates[0]) {
            mutated *= 5;
        } else if (gates[1]) {
            if (gates[2]) {
                mutated *= 10;
            } else {
                mutated *= 15;
            }
        } else {
            mutated *= 20;
        }
        return mutated;
    }
}

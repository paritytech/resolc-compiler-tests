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
//!           "caller": "0x0A6DA7984574727994Ee0aF7e891ef1F4007af59"
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
//!           "caller": "0xD1a1d8A753417c7bB6498A5BE868bc03bFaF81c8"
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
//!           "caller": "0x30Dac84C35f1791E674824714726613A117fF610"
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
//!           "caller": "0x1F02A62797365Fd835dbe712535E822F88833A9B"
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

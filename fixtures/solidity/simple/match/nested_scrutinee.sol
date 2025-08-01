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
//!           "caller": "0x03810fA4b7dbc1796675c892F5b7A157a7c63cC3"
//!         }
//!       ],
//!       "expected": [
//!         "100"
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
//!           "caller": "0x0C691f3Ffeebcc2cB4D0451Ae7F2e5f4718B8FE8"
//!         }
//!       ],
//!       "expected": [
//!         "200"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0x3F4C5F0E71bc8DE136B8FF276ebEc76FF83F4ACe"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 result;
        assembly {
            let tmp := 0
            switch witness
            case 1 { tmp := 10 }
            case 2 { tmp := 20 }
            default { tmp := 30 }
            switch tmp
            case 10 { result := 100 }
            case 20 { result := 200 }
            default { result := 255 }
        }
        return result;
    }
}

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
//!           "caller": "0x968a5f300b353a4835c5b3d08790e1742573fade"
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
//!           "caller": "0x7a4b3cf17bc0f431198bb0f1cf23cf6553d00037"
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
//!           "caller": "0xf6b17687b14872ff594fc30972026a3bd673f005"
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

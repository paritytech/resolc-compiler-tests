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
//!           "caller": "0x3F8f84DB44A3fb9523382c588A2406250369013a"
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
//!           "caller": "0x5A3bdcF168109E815E07A4f122E4e339f5F1Fe7b"
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
//!           "caller": "0x24cf9D0d54427c0fA2392d2bf37Ee8Aa90B29942"
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

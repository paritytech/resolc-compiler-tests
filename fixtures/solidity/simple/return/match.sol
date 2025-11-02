//! {
//!   "cases": [
//!     {
//!       "name": "entry0",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x74581ce41d258a41f7be65f5b5dcea7d15e69b4a"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     },
//!     {
//!       "name": "entry1",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x9258330e6fef78001a09657242eb33cc3cdbda3e"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "entry2",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2"
//!           ],
//!           "caller": "0x0286b91f0396b5092264966b09cc9c63567a55f0"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "entry3",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0xdbce0b94c83836757b90781d7329171aae53aaf4"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "entry4",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7"
//!           ],
//!           "caller": "0xcb866552a4460809dfff46c93ae54d9546de6db2"
//!         }
//!       ],
//!       "expected": [
//!         "99"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 param) public pure returns(uint64 result) {
        assembly {
            switch div(param, 3)
            case 0 {
                switch div(param, 2)
                case 0 {
                    switch param
                    case 0 {
                        result := 4
                    }
                    case 1 {
                        result := mul(param, 5) // 5
                    }
                    default {
                        result := 42
                    }
                }
                default {
                    result := mul(param, 3) // 6
                }
            }
            default {
                switch param
                case 3 {
                    result := add(mul(param, 2), 1) // 7
                }
                default {
                    result := 99
                }
            }
        }
    }
}
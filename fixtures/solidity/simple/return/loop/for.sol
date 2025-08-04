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
//!           "caller": "0x5Cd23F9A299ffD00e58B9fF89fD51841325B2E69"
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
//!           "caller": "0xC6fb4C48cB3Fb797EeC440761742C99e7dDEb310"
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
//!           "caller": "0x0EEE214643c76a9dD2Cf63419e513b8736d02612"
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
//!           "caller": "0x457d84B46A39b66083DE8F8e555DD3A7d29721e5"
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
//!           "caller": "0xA25f43550Ec337408D5d68a0ad1Aa6310942eDFD"
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
    function main(uint8 param) public pure returns(uint64) {
        for (uint8 i = 0; i < 5; i++) {
            if (param == 0 && i > 3) {
                return i; // 4
            }
            for (uint8 j = 5; j < 10; j++) {
                if (param == 1) {
                    return param * j; // 5
                }
                for (uint8 k = 0; k < 5; k++) {
                    if (param == 2 && k == 3) {
                        return 6;
                    }
                }
            }
            if (param == 3) {
                return param * 2 + 1; // 7
            }
        }
        return 99;
    }
}
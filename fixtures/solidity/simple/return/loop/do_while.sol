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
//!           "caller": "0xf323F8a2953D94E9484859448b60e6e0b6Fd8b17"
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
//!           "caller": "0xe500Dc40660BaF20531E0479f933af8BEe772944"
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
//!           "caller": "0xc0F1D6C9258C6E6C2C4791d16f48df0Fdc9e04a4"
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
//!           "caller": "0x2D55a0C630ECAEc80e264534aefB92BDbE898423"
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
//!           "caller": "0x6a0B757a0c387815Be3cc1Acd7c0d34f1f481Fdd"
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
        uint8 i = 0;
        do {
            if (param == 0 && i == 2) {
                return i * 2; // 4
            }
            do {
                if (param == 1) {
                    return 5;
                }
                uint8 j = 10;
                do {
                    if (param == 2 && j == 4) {
                        return param + j; // 6
                    }
                    j -= 2;
                } while (j != 0);
                break;
            } while (true);
            if (param == 3 && i == 7) {
                return i;
            }
            i += 1;
        } while (i != 9);
        return 99;
    }
}
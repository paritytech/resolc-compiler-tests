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
//!           "caller": "0xa3b5fbc1df29f06857cb7d0689e02ee134dd5072"
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
//!           "caller": "0x6a68ea4db9902e7af04ae7e450edfb77f44945ef"
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
//!           "caller": "0xdaaf1692830bcdd40a43370712385c0f61f8be46"
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
//!           "caller": "0xa4289d62158e30c99d46e5fb8450bd9a3693132d"
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
//!           "caller": "0xf79d9f6d5d5cf19cd30559b3331588e1b96f9b34"
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
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
//!           "caller": "0x94e1206F4683e105fA3e980b2489D19f673D3A79"
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
//!           "caller": "0x255690BbB6e0FAd55264023C0B3dB65F65f1e53a"
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
//!           "caller": "0xFc9eaDC3BBE6a0fB36A4b5fB815A2719B03BD4Fa"
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
//!           "caller": "0x58408D6355Ed03127A19fcf39e75671A09d1E187"
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
//!           "caller": "0x9710fa0901CFF9D2E8f293ac72eAc61341fE4161"
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
        while (i < 10) {
            if (param == 0 && i == 2) {
                return i * 2; // 4
            }
            while (true) {
                if (param == 1) {
                    return 5;
                }
                uint8 j = 10;
                while (j > 0) {
                    if (param == 2 && j == 4) {
                        return param + j; // 6
                    }
                    j -= 2;
                }
                break;
            }
            if (param == 3 && i == 7) {
                return i;
            }
            i += 1;
        }
        return 99;
    }
}
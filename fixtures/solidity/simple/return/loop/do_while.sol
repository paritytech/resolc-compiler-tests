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
//!           "caller": "0x233461dDD42BD2816f4a98dD46d72AE87277E291"
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
//!           "caller": "0xa50422CDBBACA0ea05b0A565D47A5f5d27E06C3b"
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
//!           "caller": "0xA16a5Daa0705755D47a396986535adAf4a13B2A5"
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
//!           "caller": "0x3FA660FBb0f88EA8694228dc245584AA0784C008"
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
//!           "caller": "0xcd2bD9C622845f0FC7154384579697E73EA78fDd"
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
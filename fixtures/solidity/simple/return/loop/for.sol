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
//!           "caller": "0x04e2273D5C953e0446fB0369e4dB31Ff901140c1"
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
//!           "caller": "0x5BF61dA59AF71790286c717fBD2bD6529B3f3B68"
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
//!           "caller": "0xaB07219324994e3CeB6fa5CA7FCe8a7dbd4008c5"
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
//!           "caller": "0xe65dCC61Ec7327fa9d68f9a88bE23A00e537b97d"
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
//!           "caller": "0xAe89B3c85E2B364044259c9D5c6E47dCFB85EC15"
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
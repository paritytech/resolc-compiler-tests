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
//!           "caller": "0xf79d9f6d5d5cf19cd30559b3331588e1b96f9b34"
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
//!           "caller": "0x4ae89c877f73e0ac0ac6878367bd31958093fff8"
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
//!           "caller": "0x34ea4c4bc240b2b50782a62d7a06e48847f6b6de"
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
//!           "caller": "0x54662d0720fae2409f3ed91e9560e7ee3964c73b"
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
//!           "caller": "0x08d91387d25ee2b3f577dbd364783485a82b82a8"
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
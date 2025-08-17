//! {
//!   "cases": [
//!     {
//!       "name": "zero_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x29a3b098572e6c7a53065cc0e18ef6d9f474f4fe"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "ordinar_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "0"
//!           ],
//!           "caller": "0x2aac428d79d9cc42475ad0222494f411b414a3c5"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "max_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "0"
//!           ],
//!           "caller": "0x1bb93559cfb76098a2c54ea963d88609afd4810a"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001200000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "7"
//!           ],
//!           "caller": "0x57320711f4e155e02819d08bcb0ad5b94d295070"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max_remainder",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "48",
//!             "7"
//!           ],
//!           "caller": "0x7c2573b1a9d778491124123ee36d160b7eff9a2c"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_next",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "49",
//!             "7"
//!           ],
//!           "caller": "0x1cad7ea68e984107b968f2f0d7a601d65fbf6adb"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "1"
//!           ],
//!           "caller": "0xb5e8f1c9d4114d94b89bc29f40894693456843a5"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     },
//!     {
//!       "name": "to_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "255"
//!           ],
//!           "caller": "0x5d231c7c81ee99907bf6b2fd2947fa4557de219c"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a, uint8 b) public pure returns(uint8) {
        return a / b;
    }
}

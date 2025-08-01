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
//!           "caller": "0x1822ACA0CE28256BCF771421258C8E9DB6857C30"
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
//!           "caller": "0xfAB7264909Ce70EEA9ab0627197666B3c6b7E29B"
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
//!       "name": "min_by_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-128",
//!             "0"
//!           ],
//!           "caller": "0xB9B4184f7aE7B57909Ccdf39326fF220e2770324"
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
//!             "127",
//!             "0"
//!           ],
//!           "caller": "0x547571a68675F6f71C100fe285C89940000475e3"
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
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "7"
//!           ],
//!           "caller": "0xfE54cc58a70e7B567a4a377070b856AA4aAEB8eb"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_divided",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "7"
//!           ],
//!           "caller": "0x4988AffCeca02fFeD262981C9DC6EBf0fB1236D8"
//!         }
//!       ],
//!       "expected": [
//!         "-6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_divider",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-7"
//!           ],
//!           "caller": "0x4eeAF03A8EBD4596Fd3FBe1CcEEcB44bD9B3aBa9"
//!         }
//!       ],
//!       "expected": [
//!         "-6"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-7"
//!           ],
//!           "caller": "0x89D624ff45f8Fd3c6B598b1612b6b6E456d74723"
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
//!           "caller": "0x03578D1a6Cbc55f0220f6d563D9510a37F78BC9B"
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
//!           "caller": "0xD29ba68926DF26a404A89c10F28FDACadE437638"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "to_min_from_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "-1"
//!           ],
//!           "caller": "0x1FD03A5a9408f206065fF7A1788A3045C08A0779"
//!         }
//!       ],
//!       "expected": [
//!         "-127"
//!       ]
//!     },
//!     {
//!       "name": "to_min_from_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-128",
//!             "1"
//!           ],
//!           "caller": "0x9B044A526b0e706C6797629BD4b128b8B60Bc21F"
//!         }
//!       ],
//!       "expected": [
//!         "-128"
//!       ]
//!     },
//!     {
//!       "name": "to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "1"
//!           ],
//!           "caller": "0x94d9709A1cCd46117D962f244B3511Fa75beb80d"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "to_one_positives",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "127"
//!           ],
//!           "caller": "0x31bE3d82cfA89cEc5380BeaDF49Dbb2fC03baB8c"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "to_one_negatives",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-128",
//!             "-128"
//!           ],
//!           "caller": "0xB99C77DE27E36685f776f32543042db2fA66C65A"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "min_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-127",
//!             "3"
//!           ],
//!           "caller": "0xE496248C5A4abf421e15a192de7a2E082A98B700"
//!         }
//!       ],
//!       "expected": [
//!         "-42"
//!       ]
//!     },
//!     {
//!       "name": "max_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127",
//!             "-3"
//!           ],
//!           "caller": "0xE2cA576427C3B3001D9ac7402769CDD76059010e"
//!         }
//!       ],
//!       "expected": [
//!         "-42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        int8 c = a;
        c /= b;
        return c;
    }
}

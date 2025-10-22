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
//!           "caller": "0x371a8682606ce34c71135d1ade452c263dd46b26"
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
//!           "caller": "0xbb01731a5e6393d7c60033d744ae0e9ce2e78139"
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
//!             "-170141183460469231731687303715884105728",
//!             "0"
//!           ],
//!           "caller": "0xca611b9cd569b96b7c7ebea2f08dc571bf7b0fd7"
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
//!             "170141183460469231731687303715884105727",
//!             "0"
//!           ],
//!           "caller": "0x1774f6563c621d83b79f13561ea367387ab0ccc8"
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
//!       "name": "zero_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "7"
//!           ],
//!           "caller": "0x8e034b46ab96785b3aa1ef570f6134756eb99c46"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_divided",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "7"
//!           ],
//!           "caller": "0x013527f95a72f2f95bff5d10d3f7c20c42f74801"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_divider",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-7"
//!           ],
//!           "caller": "0x6b06b862a52c8d7e4a82fdf12517a516afdf6842"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-7"
//!           ],
//!           "caller": "0x179585cdbd4c8c4dc2e16e2f0f637cd7e040affb"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "45",
//!             "7"
//!           ],
//!           "caller": "0xf78bcabad248f0937bdcfb1b9c21fc403d176860"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_divided",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-45",
//!             "7"
//!           ],
//!           "caller": "0x18e17cab792bc6fddc73f8a0247f8bfcf0da49af"
//!         }
//!       ],
//!       "expected": [
//!         "-3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_divider",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "45",
//!             "-7"
//!           ],
//!           "caller": "0xab8ecd9c951f7f57b77b3c4578c7e9c26c4ee8d9"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_remainder_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-45",
//!             "-7"
//!           ],
//!           "caller": "0x25fbb6e553576e42e0eae158bf4bdd6031273dfb"
//!         }
//!       ],
//!       "expected": [
//!         "-3"
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
//!           "caller": "0xb40d73153ea796af4e5eef4626942022aab84175"
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
//!           "caller": "0x3de1d125dec845c438d997d3554e6d105421c076"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_to_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0x4fdef89f07d857dd1b77d2daaf8aca2b445ab881"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "max_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "85070591730234615865843651857942052864"
//!           ],
//!           "caller": "0xd75668ad0ab5917c79d453309cc2ca31120c0b02"
//!         }
//!       ],
//!       "expected": [
//!         "85070591730234615865843651857942052863"
//!       ]
//!     },
//!     {
//!       "name": "min_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105728",
//!             "170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0xd7d938266baf1e8a3d8d1e05c97b9c8d6cb26bac"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "min_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105727",
//!             "3"
//!           ],
//!           "caller": "0x2b489cba91b57e1c66f43a35d386f0f6bbe53066"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     },
//!     {
//!       "name": "max_to_negative_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727",
//!             "-3"
//!           ],
//!           "caller": "0xea5a8b7c8ae6f6acee81d5e8da5cb242e47be65f"
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
    function main(int128 a, int128 b) public pure returns(int128) {
        int128 c = a;
        c %= b;
        return c;
    }
}

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
//!           "caller": "0x5ad866092ffa234aaf7dda834dd6ca69eb2eefc9"
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
//!           "caller": "0x7ec79cefa2b38fe4f7a7f8cdc7ba9c24941d3f2a"
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
//!           "caller": "0x386033da2d1c227a479732a67095249f054dce1d"
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
//!           "caller": "0x06a3dc9f7a60d0c4e9eb1989f266679d03320d3d"
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
//!           "caller": "0x4683e3d8cd2495f692bc76cd1d8bebf6067669d5"
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
//!           "caller": "0xa82b0cd5d186e955302e63a9272b49112a1b5021"
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
//!           "caller": "0xedde91ed94463c10ac9b0001edca3c068d8e226b"
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
//!           "caller": "0xc25c206386e330bdf8e21226b0c5f3cde9287616"
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
//!           "caller": "0xddb436b2a20b648530b7d29573eb1d85c49b71a3"
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
//!           "caller": "0x28745426d7c9f8e9209773d8eaec5074c1d1e401"
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
//!           "caller": "0xfc65da473e714a78bf183c0fd2ac8765e119af5e"
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
//!           "caller": "0xd607f2b8f5e74cf73940141a9a8e939480b993c2"
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
//!           "caller": "0x7baa896642f07fc38317c29ae2d86a8439d0d881"
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
//!           "caller": "0x949155c1c74bf891e9d4cdf23488a7aec6709345"
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
//!           "caller": "0x2d9f2c3a0937ac5a49fd6ffc3352786e93313280"
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
//!           "caller": "0xb7c1b720fa76cbe57258f54ab31b0d9c1bb19f65"
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
//!           "caller": "0x8b244426e6f728a93e2e15e63eb348d9bef4e1c6"
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

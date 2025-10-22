//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x44786d273376d48159e393212ee701cf68c699d3"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-3",
//!             "4"
//!           ],
//!           "caller": "0x6080c5126e2f65f1510245cba0daa9e562f81a7b"
//!         }
//!       ],
//!       "expected": [
//!         "81"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-4",
//!             "3"
//!           ],
//!           "caller": "0xa01d610d149ad88d913b30e80e9b9abdff44e348"
//!         }
//!       ],
//!       "expected": [
//!         "-64"
//!       ]
//!     },
//!     {
//!       "name": "to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "11",
//!             "2"
//!           ],
//!           "caller": "0x67bf4e901ba84e38b6ad8c2b5757d4f5205111f9"
//!         }
//!       ],
//!       "expected": [
//!         "121"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100",
//!             "2"
//!           ],
//!           "caller": "0x7336f9943498f0bbcd00594d4e4c87caf9e54c11"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "16"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "overflow_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "12",
//!             "2"
//!           ],
//!           "caller": "0xbd7b567059c74a520a00086504068add7b4e8760"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "115792089237316195423570985008687907853269984665640564039457584007913129639824"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "max_pow_overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-2",
//!             "255"
//!           ],
//!           "caller": "0x08963adc118c91aed106ae1987bfd53fc3011249"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "0"
//!           ],
//!           "exception": false
//!         },
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4E487B7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "0_max_pow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "255"
//!           ],
//!           "caller": "0x5b3fcd13cf91f5c1a9724116333a570a2ca2116b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "1_max_pow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "255"
//!           ],
//!           "caller": "0xc8ff52ece34a58d1f56ab25a0d50e6350b44e739"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "1n_max_pow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-1",
//!             "255"
//!           ],
//!           "caller": "0x9b316f08f7a0182e626e3195bda70875fefd726c"
//!         }
//!       ],
//!       "expected": [
//!         "-1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(int8 a, uint8 b) public pure returns(int8) {
        return a ** b;
    }
}

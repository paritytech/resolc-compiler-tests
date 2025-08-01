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
//!           "caller": "0xb0902670b1E1FD9338631E1FbF704e8Df20E72E0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "3"
//!           ],
//!           "caller": "0xAcBC9cEe8D3069D46554dc87f6F228b4eBDD62Ee"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "3"
//!           ],
//!           "caller": "0xe8d43A4D44Ff579436F47B8C7DdECd3df04546AE"
//!         }
//!       ],
//!       "expected": [
//!         "-126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "-3"
//!           ],
//!           "caller": "0xd6dC4C39c757604822Adc47BFD9b13AA2dE4df32"
//!         }
//!       ],
//!       "expected": [
//!         "-126"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_negative_both",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-42",
//!             "-3"
//!           ],
//!           "caller": "0xc76f012e39424426436D892A3394606963618Ff2"
//!         }
//!       ],
//!       "expected": [
//!         "126"
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
//!           "caller": "0xb3eef45a6a64DEBe4e507bb2F6B2c502378F9D3A"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-100",
//!             "2"
//!           ],
//!           "caller": "0x659487B9Ae520bC25227b46b76afc653a2F5F16D"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "56"
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
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "100",
//!             "2"
//!           ],
//!           "caller": "0xd469cAAf50eE733053b06DF8ffFaD83cf165c4cd"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "-56"
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
//!             "16",
//!             "8"
//!           ],
//!           "caller": "0xE5c1eA09A12d5B9A51b32489032884C809D0c936"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "-128"
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
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int8 a, int8 b) public pure returns(int8) {
        int8 c = a;
        c *= b;
        return c;
    }
}

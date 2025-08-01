//! {
//!   "cases": [
//!     {
//!       "name": "condition_true",
//!       "inputs": [
//!         {
//!           "method": "without_message",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x65a5a91065f6fBaAa33e9E10d5ad97eF07af3F5C"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "condition_false",
//!       "inputs": [
//!         {
//!           "method": "without_message",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x99C7D8a7F11f7cd123A933Fd4098aBaEdfDA107e"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "condition_true",
//!       "inputs": [
//!         {
//!           "method": "with_empty_message",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x9c5ebCC19c51bCA21833Dd83Fd931B94b3F5BC5B"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": "<=0.7.5",
//!           "return_data": [
//!             "0x08C379A000000000000000000000000000000000000000000000000000000000",
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": ">=0.7.6",
//!           "return_data": [
//!             "0x08C379A000000000000000000000000000000000000000000000000000000000",
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         }
//!       ]
//!     },
//!     {
//!       "name": "condition_false",
//!       "inputs": [
//!         {
//!           "method": "with_empty_message",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xeC2C8117848B1C3f999f7dB20060da462b12AC06"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "condition_true",
//!       "inputs": [
//!         {
//!           "method": "with_message",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x60b752bb1D15394Ff214f7Cb3f0ab9369D0c594A"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x08C379A000000000000000000000000000000000000000000000000000000000",
//!           "0x0000002000000000000000000000000000000000000000000000000000000000",
//!           "0x000000054572726F720000000000000000000000000000000000000000000000",
//!           "0x0000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "condition_false",
//!       "inputs": [
//!         {
//!           "method": "with_message",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x449A80ca459335973893b67caFB8EC517E6CEcB5"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    function without_message(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            require(result != 5);
        }

        return result;
    }

    function with_empty_message(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            require(result != 5, "");
        }

        return result;
    }

    function with_message(bool condition) public pure returns(uint8) {
        uint8 result = 5;

        if (condition) {
            require(result != 5, "Error");
        }

        return result;
    }
}

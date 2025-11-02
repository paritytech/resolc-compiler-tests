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
//!           "caller": "0xf5c95461ff497507dcef00f12c201a4dc1a76b4f"
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
//!           "caller": "0x7001b69439ef51f064b521f6d25d780c5a0693da"
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
//!           "caller": "0x36f722ca56d7af1c4b28136b103c01051de52441"
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
//!           "caller": "0x312f6dd4b99cc9c2e8f0bc181e6566e255d2a919"
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
//!           "caller": "0x2a6f3491b02814ba168be8edd61b4b00b4ba06db"
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
//!           "caller": "0x83801f5929b73f523ca20389800c3a11f4dcf097"
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

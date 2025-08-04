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
//!           "caller": "0x4B8efd9bf71A3125520F792973AC5A0A824ee97d"
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
//!           "caller": "0x946eA0536accec033DEc0BE1EA48bE2F5cEB67FF"
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
//!           "caller": "0xd7EBF4354CcE0013739C0769028D4ADa770d8D09"
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
//!           "caller": "0x32D416E553db2Fc92F26c6EE2a204997886e8bdA"
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
//!           "caller": "0x0c7570ba305730Ce7cA3F620E538e51d911e7FBE"
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
//!           "caller": "0x8bD53b1C797E1BFF4C62DfcA24030E01B9437C6B"
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

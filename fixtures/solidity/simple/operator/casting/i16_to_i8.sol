//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x4812fb23290CE7f6C226b1AB5B58c364D4823fa6"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xA7DDB3A426ccb3a1009C95C79e8066934EcaCd86"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "127"
//!           ],
//!           "caller": "0x57fc89A6B812c9a46B6Faee49cCc9Df5e27274A5"
//!         }
//!       ],
//!       "expected": [
//!         "127"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-129"
//!           ],
//!           "caller": "0x823DaA6a034e1a9BFb6fe3A5cbD1a57A9b1E1826"
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
//!             "-1000"
//!           ],
//!           "caller": "0x6599BFbe04E63eF0fBdF6CDFFF008001470C8ef3"
//!         }
//!       ],
//!       "expected": [
//!         "24"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "128"
//!           ],
//!           "caller": "0xCdF8C4b83ad17faE600Ee0C74720A736E09a1ed3"
//!         }
//!       ],
//!       "expected": [
//!         "-128"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1000"
//!           ],
//!           "caller": "0x09310AFA11edAE7741B1b11dE22F9ed580d5b5Eb"
//!         }
//!       ],
//!       "expected": [
//!         "-24"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int16 a) public pure returns(int8) {
        return int8(a);
    }
}

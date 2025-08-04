//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "first",
//!           "calldata": [
//!             "11"
//!           ],
//!           "caller": "0x301f457f31D1ad9685FDE54cD0F69a81bC96bD18"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4e487b7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "8"
//!           ],
//!           "exception": false
//!         }
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "second",
//!           "calldata": [
//!             "11"
//!           ],
//!           "caller": "0x8E926eeE0468e8a65B43182cd35Fb441e880dFE7"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "return_data": [
//!             "264"
//!           ]
//!         }
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "third",
//!           "calldata": [
//!             "195"
//!           ],
//!           "caller": "0x586213bD982C3779Bb3BD0a07719557b6cd36345"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4e487b7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000001100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": "<0.8",
//!           "return_data": [
//!             "70784"
//!           ],
//!           "exception": false
//!         }
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function first(uint8 _num) public returns (uint256) {
        return _num * 24;
    }

    function second(uint8 _num) public returns (uint256) {
        return _num * uint256(24);
    }

    function third(uint8 _num) public returns (uint256) {
        return _num * 1 days;
    }
}

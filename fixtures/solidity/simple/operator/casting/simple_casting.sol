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
//!           "caller": "0x1023272cE9334Ab3b9388C0353DAbF34BE6E977d"
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
//!           "caller": "0xB03560698B09Fbd835384C1ba855fbA890646AB1"
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
//!           "caller": "0x72e459669291AeAEF2461902F4Fb042Ced523296"
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

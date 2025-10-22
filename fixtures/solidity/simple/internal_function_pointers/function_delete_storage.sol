//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "set",
//!           "calldata": [],
//!           "expected": [
//!             "7"
//!           ],
//!           "caller": "0x5ae9ce3f41ef5d71bd372d6b4bf2b84ba3b3a60d"
//!         },
//!         {
//!           "method": "ca",
//!           "calldata": [],
//!           "expected": [
//!             "7"
//!           ],
//!           "caller": "0x5ae9ce3f41ef5d71bd372d6b4bf2b84ba3b3a60d"
//!         },
//!         {
//!           "method": "d",
//!           "calldata": [],
//!           "expected": [
//!             "1"
//!           ],
//!           "caller": "0x5ae9ce3f41ef5d71bd372d6b4bf2b84ba3b3a60d"
//!         },
//!         {
//!           "method": "ca",
//!           "calldata": [],
//!           "caller": "0x5ae9ce3f41ef5d71bd372d6b4bf2b84ba3b3a60d"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4e487b7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000005100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": "<=0.7",
//!           "return_data": [],
//!           "exception": true
//!         }
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function a() public returns (uint256) {
        return 7;
    }

    function() returns (uint256) internal y;

    function set() public returns (uint256) {
        y = a;
        return y();
    }

    function d() public returns (uint256) {
        delete y;
        return 1;
    }

    function ca() public returns (uint256) {
        return y();
    }
}

// ====
// compileToEwasm: also
// ----
// set() -> 7
// ca() -> 7
// d() -> 1
// ca() -> FAILURE

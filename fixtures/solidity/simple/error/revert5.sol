//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0xc92fb2e3f1a8f9861876ee812dfdedb3e845d13a"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x08C379A000000000000000000000000000000000000000000000000000000000",
//!           "0x0000002000000000000000000000000000000000000000000000000000000000",
//!           "0x0000000b72657665727420686572650000000000000000000000000000000000",
//!           "0x0000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.24;

contract Test {
    bool public a = false;

    function f() public {
        require(a, f1());
    }

    function f1() public returns (string memory) {
        a = true;
        return "revert here";
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "25"
//!           ],
//!           "caller": "0x355F8CE37eE72C7b67A291093da5F4A0a346cAAf"
//!         }
//!       ],
//!       "expected": [
//!         "131"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint248 constant CONST = 42;

    function main(uint248 witness) public pure returns(uint248) {
        uint248 local = 64;

        return CONST + local + witness;
    }
}

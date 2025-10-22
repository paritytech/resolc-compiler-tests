//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0xedada3b52ab8f77fac9928398819606d645a4af7"
//!         }
//!       ],
//!       "expected": [
//!         "15"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    struct Inner {
        uint8 value;
    }

    struct Test {
        Inner inner;
    }

    function main(uint8 witness) public pure returns(uint8) {
        return Test(Inner(witness * 5)).inner.value;
    }
}

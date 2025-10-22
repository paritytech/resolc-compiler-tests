//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x7ceb3eb751c4c16dd9de1f0bb1b5630e6194e78a"
//!         }
//!       ],
//!       "expected": [
//!         "210"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        return uint8(witness + 42e0 + 0x2a + 42 + 0x2A);
    }
}

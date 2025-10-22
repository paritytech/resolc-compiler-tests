//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "4"
//!           ],
//!           "caller": "0x3da8d322cb2435da26e9c9fee670f9fb7fe74e49"
//!         }
//!       ],
//!       "expected": [
//!         "12"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        return 1 + (2 + 2 * witness) + 1;
    }
}

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
//!           "caller": "0x8aEE248f912951E22D6467FAC12E02B7562D6eed"
//!         }
//!       ],
//!       "expected": [
//!         "64516"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint8 constant SCRUTINEE = 42;

    function main(uint8 witness) public pure returns(uint24) {
        return 65536 - 255 * uint24(witness);
    }
}

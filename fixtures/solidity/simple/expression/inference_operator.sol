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
//!           "caller": "0x9fbe67e4a55bebc5a91886cf53963d487eba5b6c"
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

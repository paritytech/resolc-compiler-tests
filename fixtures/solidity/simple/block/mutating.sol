//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "50"
//!           ],
//!           "caller": "0xf7edc8fa1ecc32967f827c9043fcae6ba73afa5c"
//!         }
//!       ],
//!       "expected": [
//!         "75"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 witness) public pure returns(uint8) {
        uint8 inner = 25;
        {
            inner += witness;
        }
        return inner;
    }
}

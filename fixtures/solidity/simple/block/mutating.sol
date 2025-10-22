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
//!           "caller": "0x4cceba2d7d2b4fdce4304d3e09a1fea9fbeb1528"
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

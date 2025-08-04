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
//!           "caller": "0xc05600b24eacFE41fc78A213B80384cA59Fc20b3"
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

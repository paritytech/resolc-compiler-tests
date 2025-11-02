//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x36e34c283310aee6d7a2f7554efe325a27918b27"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-208/calldata-array-runtime-error

pragma solidity >=0.4.16;

contract Test {
    function main(bool[1] memory a) public pure returns(uint8) {
        return 1;
    }
}

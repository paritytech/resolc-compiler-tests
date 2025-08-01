//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x51B7AA9B4bCcE1Fa09bF592DB5E6A9d13b60c10c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "24",
//!             "8"
//!           ],
//!           "caller": "0x371a8682606cE34c71135D1aDe452C263dD46B26"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "255",
//!             "255"
//!           ],
//!           "caller": "0xBB01731A5E6393D7C60033D744AE0E9Ce2E78139"
//!         }
//!       ],
//!       "expected": [
//!         "255"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint8 a, uint8 b) public pure returns(uint8) {
        return a & b;
    }
}

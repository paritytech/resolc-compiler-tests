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
//!           "caller": "0xde521346f9327a4314a18b2cda96b2a33603177a"
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
//!             "42",
//!             "21"
//!           ],
//!           "caller": "0x69842e12d6f36f9f93f06086b70795bfc7e02745"
//!         }
//!       ],
//!       "expected": [
//!         "63"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "115792089237316195423570985008687907853269984665640564039457584007913129639935",
//!             "115792089237316195423570985008687907853269984665640564039457584007913129639935"
//!           ],
//!           "caller": "0x9b7bdf6ad17d5fc9a168acaa24495e52a65f3b79"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b) public pure returns(uint256) {
        return a ^ b;
    }
}

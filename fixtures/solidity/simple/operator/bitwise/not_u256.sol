//! {
//!   "cases": [
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x2a0d6b92b042497013e5549d6579202608ce0c80"
//!         }
//!       ],
//!       "expected": [
//!         "115792089237316195423570985008687907853269984665640564039457584007913129639893"
//!       ]
//!     },
//!     {
//!       "name": "min_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xa4f8c598927eab2f1898f8f2d6f8121578de2344"
//!         }
//!       ],
//!       "expected": [
//!         "115792089237316195423570985008687907853269984665640564039457584007913129639935"
//!       ]
//!     },
//!     {
//!       "name": "max_to_min",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "115792089237316195423570985008687907853269984665640564039457584007913129639935"
//!           ],
//!           "caller": "0xdb21655b672dacc8da6f538c899f9d6969604117"
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
    function main(uint256 a) public pure returns(uint256) {
        return ~a;
    }
}

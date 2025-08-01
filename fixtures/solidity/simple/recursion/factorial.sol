//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "fact",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xD7c4e14524a6061FA4b8B16EDe82d2914340D1C2"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "fifth",
//!       "inputs": [
//!         {
//!           "method": "fact",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x82218F36540E6E48eCE3Cbac9a57fe8e74AF502b"
//!         }
//!       ],
//!       "expected": [
//!         "120"
//!       ]
//!     },
//!     {
//!       "name": "twelfth",
//!       "inputs": [
//!         {
//!           "method": "fact",
//!           "calldata": [
//!             "12"
//!           ],
//!           "caller": "0xd2B654D7B7d485780907B877e11C662e789245e0"
//!         }
//!       ],
//!       "expected": [
//!         "479001600"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function fact(uint8 n) public pure returns(uint64) {
        if (n == 0) {
            return 1;
        }

        return fact(n - 1) * n;
    }
}

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
//!           "caller": "0x795c0ad74d21df57027d0181507b895ef5f04283"
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
//!           "caller": "0xbe7bc5d40a1ab52c7dd79939e5e2b8fdb84da9d8"
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
//!           "caller": "0x441313fabc924cefe5334681e7173da16f5c9272"
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

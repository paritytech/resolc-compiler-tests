//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E",
//!     "I"
//!   ],
//!   "comment": "solc 0.8.0 yul difference",
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "34"
//!           ],
//!           "caller": "0xdB03Bc726e6D337611694f8c65F44f58D1C6d4f7"
//!         }
//!       ],
//!       "expected": [
//!         "1496577676626844588240573268701473812127674924007424"
//!       ]
//!     },
//!     {
//!       "name": "overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2223223",
//!             "344313"
//!           ],
//!           "caller": "0x3420Ab7B73133231Eb3D331367a44022A3b66b83"
//!         }
//!       ],
//!       "expected": [
//!         "100285653084869015597090712088097646536078582653240989835715781990963135627703"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    function main(uint256 a, uint256 b) public pure returns(uint256) {
        unchecked {
            return a**b;
        }
    }
}

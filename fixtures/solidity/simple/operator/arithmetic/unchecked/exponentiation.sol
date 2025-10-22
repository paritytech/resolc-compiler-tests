//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E >=0.8.1"
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
//!           "caller": "0xdd5094937dcc2863897f673ca3d85cd4e55370c2"
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
//!           "caller": "0xdd0e623c1dd2b7d57fa6448a365e72afa4a93424"
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
    function main(uint256 a, uint256 b) public pure returns (uint256) {
        unchecked {
            return a ** b;
        }
    }
}

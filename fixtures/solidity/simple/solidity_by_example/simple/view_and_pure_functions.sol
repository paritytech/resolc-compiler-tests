//! {
//!   "cases": [
//!     {
//!       "name": "addToXFirst",
//!       "inputs": [
//!         {
//!           "method": "addToX",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xD60349c24dB7F1053086eF0D6364b64B1e0313f0"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "addToXSecond",
//!       "inputs": [
//!         {
//!           "method": "addToX",
//!           "calldata": [
//!             "67234736412121212"
//!           ],
//!           "caller": "0xD560A93C87d4a9844Ecd60DB4406216325e3b17e"
//!         }
//!       ],
//!       "expected": [
//!         "67234736412121213"
//!       ]
//!     },
//!     {
//!       "name": "addFirst",
//!       "inputs": [
//!         {
//!           "method": "add(uint256,uint256)",
//!           "calldata": [
//!             "2",
//!             "2"
//!           ],
//!           "caller": "0x3b23ec1d122f4e51b02db674fadDF40737Bc14C4"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     },
//!     {
//!       "name": "addSecond",
//!       "inputs": [
//!         {
//!           "method": "add(uint256,uint256)",
//!           "calldata": [
//!             "782438347287334342",
//!             "512356125631255135132125661271278"
//!           ],
//!           "caller": "0x5a2fD78981874E858e49E660842EC08Cb3B0796a"
//!         }
//!       ],
//!       "expected": [
//!         "512356125631255917570472948605620"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    uint public x = 1;

    // Promise not to modify the state.
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // Promise not to modify or read from the state.
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}

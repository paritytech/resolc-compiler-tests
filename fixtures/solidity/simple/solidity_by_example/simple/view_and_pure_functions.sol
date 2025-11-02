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
//!           "caller": "0x0049cda3305ccb9cb23e7ce2528cef555e9a5b32"
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
//!           "caller": "0xbe594cd7cbf3a1212d87a12e8d286d2872c0e023"
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
//!           "caller": "0x5a35065336f969cd507bd64f58e27a6e5b6f2df5"
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
//!           "caller": "0xeb60b2f6ffc7c2ea03e85765b6c6d32de4505b7a"
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

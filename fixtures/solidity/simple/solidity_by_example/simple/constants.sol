//! {
//!   "cases": [
//!     {
//!       "name": "address",
//!       "inputs": [
//!         {
//!           "method": "MY_ADDRESS",
//!           "calldata": [],
//!           "caller": "0x120438797937c1b3eccc83f0b363290e67fe87d4"
//!         }
//!       ],
//!       "expected": [
//!         "0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc"
//!       ]
//!     },
//!     {
//!       "name": "uint",
//!       "inputs": [
//!         {
//!           "method": "MY_UINT",
//!           "calldata": [],
//!           "caller": "0x45bcb0db74dff4d7b3bca6cb14bf35800ccd3100"
//!         }
//!       ],
//!       "expected": [
//!         "123"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;
}

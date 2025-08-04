//! {
//!   "cases": [
//!     {
//!       "name": "address",
//!       "inputs": [
//!         {
//!           "method": "MY_ADDRESS",
//!           "calldata": [],
//!           "caller": "0xbAf237f5150dD3924D668f06A3256B65D3AA7947"
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
//!           "caller": "0x6A66bAa9Fd649fbF5C135C1e0B2811CE425270b4"
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

//! {
//!   "cases": [
//!     {
//!       "name": "oneWei",
//!       "inputs": [
//!         {
//!           "method": "oneWei",
//!           "calldata": [],
//!           "caller": "0x2a1648c79f5bc22e0540581ec6a441b4c2d22726"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "isOneWei",
//!       "inputs": [
//!         {
//!           "method": "isOneWei",
//!           "calldata": [],
//!           "caller": "0x8a50c218f9a291982a3bc671b5f6dd97da603296"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "oneEther",
//!       "inputs": [
//!         {
//!           "method": "oneEther",
//!           "calldata": [],
//!           "caller": "0xae5a889e9e34199595685a7c8b31e0d18bd1ab1c"
//!         }
//!       ],
//!       "expected": [
//!         "1000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "isOneEther",
//!       "inputs": [
//!         {
//!           "method": "isOneEther",
//!           "calldata": [],
//!           "caller": "0x60f95f92b26ec225546d762781d60f88b6c988a7"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    uint public oneWei = 1 wei;
    // 1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18;
}

//! {
//!   "cases": [
//!     {
//!       "name": "oneWei",
//!       "inputs": [
//!         {
//!           "method": "oneWei",
//!           "calldata": [],
//!           "caller": "0x3561879948e34Be40AC3cAA8899BF3f52D40C45A"
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
//!           "caller": "0x4B3fd83e4E879964Fb6F63eD37DC76549f1aA582"
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
//!           "caller": "0xf4Fa591dc5E06728ce9E919f67fd15Ca1Bf9A421"
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
//!           "caller": "0xf70f1539F4d2F2ac793ed206aaff47fc37353162"
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

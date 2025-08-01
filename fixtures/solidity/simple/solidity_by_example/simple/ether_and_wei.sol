//! {
//!   "cases": [
//!     {
//!       "name": "oneWei",
//!       "inputs": [
//!         {
//!           "method": "oneWei",
//!           "calldata": [],
//!           "caller": "0x680db57d73F9cF6b6244EFD5c57ADd31c5981d1c"
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
//!           "caller": "0x120914bdF39A940d770d04D9AD8e33771cf11e37"
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
//!           "caller": "0xb6ae911D3bC66f9EF3f583b21222A35C7a8F7251"
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
//!           "caller": "0xE40b20a4a6A84DC0952c0b4e1d6c8A0B593deCE7"
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

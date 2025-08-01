//! {
//!   "cases": [
//!     {
//!       "name": "address",
//!       "inputs": [
//!         {
//!           "method": "MY_ADDRESS",
//!           "calldata": [],
//!           "caller": "0x06Bdb7426dabC4978868831590099afc25D4D430"
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
//!           "caller": "0x3dDabFe6e8DB4D72159c14E18C5299b0A224F569"
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

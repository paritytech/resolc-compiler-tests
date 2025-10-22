//! {
//!   "cases": [
//!     {
//!       "name": "address",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "9823"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0xff73c2953ad86d47ea826d7d806a695eedef8e34"
//!         },
//!         {
//!           "method": "MY_ADDRESS",
//!           "calldata": [],
//!           "caller": "0xff73c2953ad86d47ea826d7d806a695eedef8e34"
//!         }
//!       ],
//!       "expected": [
//!         "0xff73c2953ad86d47ea826d7d806a695eedef8e34"
//!       ]
//!     },
//!     {
//!       "name": "uint",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "555555"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0x60952a51b312ced28e2fb235057db6de4b9300b7"
//!         },
//!         {
//!           "method": "MY_UINT",
//!           "calldata": [],
//!           "caller": "0x60952a51b312ced28e2fb235057db6de4b9300b7"
//!         }
//!       ],
//!       "expected": [
//!         "555555"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    // coding convention to uppercase constant variables
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}


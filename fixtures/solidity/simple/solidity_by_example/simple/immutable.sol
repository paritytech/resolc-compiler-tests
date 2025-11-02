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
//!           "caller": "0x36a9946e572584f79f614c2b26eb486a2dee2d24"
//!         },
//!         {
//!           "method": "MY_ADDRESS",
//!           "calldata": [],
//!           "caller": "0x36a9946e572584f79f614c2b26eb486a2dee2d24"
//!         }
//!       ],
//!       "expected": [
//!         "0x36a9946e572584f79f614c2b26eb486a2dee2d24"
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
//!           "caller": "0xff73c2953ad86d47ea826d7d806a695eedef8e34"
//!         },
//!         {
//!           "method": "MY_UINT",
//!           "calldata": [],
//!           "caller": "0xff73c2953ad86d47ea826d7d806a695eedef8e34"
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


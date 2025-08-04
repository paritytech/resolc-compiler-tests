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
//!           "caller": "0x74BA42E466E394F51D50F27B70f3379b19242fbe"
//!         },
//!         {
//!           "method": "MY_ADDRESS",
//!           "calldata": [],
//!           "caller": "0x74BA42E466E394F51D50F27B70f3379b19242fbe"
//!         }
//!       ],
//!       "expected": [
//!         "0x74BA42E466E394F51D50F27B70f3379b19242fbe"
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
//!           "caller": "0x38cDADB2B8be7d80a3AD3Cd7319004Af1BB2aCB7"
//!         },
//!         {
//!           "method": "MY_UINT",
//!           "calldata": [],
//!           "caller": "0x38cDADB2B8be7d80a3AD3Cd7319004Af1BB2aCB7"
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


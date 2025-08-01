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
//!           "caller": "0x0BEf7C693Fd9e2493Cd8F29d07Db8DbeA3e21259"
//!         },
//!         {
//!           "method": "MY_ADDRESS",
//!           "calldata": [],
//!           "caller": "0x0BEf7C693Fd9e2493Cd8F29d07Db8DbeA3e21259"
//!         }
//!       ],
//!       "expected": [
//!         "0x0BEf7C693Fd9e2493Cd8F29d07Db8DbeA3e21259"
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
//!           "caller": "0xD458aee344F24fCbf0aA1B7938AA2ee448330238"
//!         },
//!         {
//!           "method": "MY_UINT",
//!           "calldata": [],
//!           "caller": "0xD458aee344F24fCbf0aA1B7938AA2ee448330238"
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


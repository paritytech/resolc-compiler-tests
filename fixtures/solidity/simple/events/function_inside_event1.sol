//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x41b18077e78745786b7ee95dec0b330ee16b21d4"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [
//!               "0x47e2689743f14e97f7dcfa5eec10ba1dff02f83b3d1d4b9c07b206cbbda66450"
//!             ],
//!             "values": [
//!               "5"
//!             ]
//!           }
//!         ]
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.21;

contract Test {
    event E1(uint256 Number);

    function f() public {
        emit E1(f1());
    }

    function f1() public returns (uint256) {
        return 5;
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x92128c2e0c0b302f46ba027bd16c24619e62006f"
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
//!               "6"
//!             ]
//!           },
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

    function f1() internal returns (uint256) {
        emit E1(6);
        return 5;
    }
}

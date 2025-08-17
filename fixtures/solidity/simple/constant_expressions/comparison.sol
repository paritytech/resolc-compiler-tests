//! {
//!   "cases": [
//!     {
//!       "name": "equals",
//!       "inputs": [
//!         {
//!           "method": "equals",
//!           "calldata": [],
//!           "caller": "0x94f075b59349ad12adb4e3e9b6c0ec94eb3be993"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "less_or_equals",
//!       "inputs": [
//!         {
//!           "method": "less_or_equals",
//!           "calldata": [],
//!           "caller": "0xf40f67832828b3f2b4c81694635843e7ac98ae58"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "greater_or_equals",
//!       "inputs": [
//!         {
//!           "method": "greater_or_equals",
//!           "calldata": [],
//!           "caller": "0xec42629faaeeccdf39d83f01d1955286430ee063"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "not_equals",
//!       "inputs": [
//!         {
//!           "method": "not_equals",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x11e9477bfb886ec3e13531b34c97be3262cc41a4"
//!         }
//!       ],
//!       "expected": [
//!         "0",
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function equals() public pure returns (bool) {
        return -0 == 0;
    }

    function less_or_equals() public pure returns (bool) {
        return 2*100 <= 2/3*3;
    }

    function greater_or_equals() public pure returns (bool) {
        return 2**256-1 >= 2**256-1;
    }

    function greater_or_less() public pure returns (bool) {
        return 100 > 100 || 100 < 100;
    }

    function not_equals(uint256 a) public pure returns (bool, bool) {
        return (
            3/2*2 != 3/6*6,
            a/2*2 != a/6*6
        );
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "equals",
//!       "inputs": [
//!         {
//!           "method": "equals",
//!           "calldata": [],
//!           "caller": "0x2591177f73135324d646556fC4c880AC8a149C8e"
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
//!           "caller": "0xd4cE1FAF9349c0B3b50Da3e419573cc39EE66e02"
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
//!           "caller": "0xc1E2e825C6998235AF611d382722D28890c06c86"
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
//!           "caller": "0x33C18461D6A1751875Ca993DD0416d5D17bc02FB"
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

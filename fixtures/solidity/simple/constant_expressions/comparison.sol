//! {
//!   "cases": [
//!     {
//!       "name": "equals",
//!       "inputs": [
//!         {
//!           "method": "equals",
//!           "calldata": [],
//!           "caller": "0x5b67C3fCf48F855560b81D9a8A8eeDB8c575411E"
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
//!           "caller": "0x5b884d1bd0BB369F694F71B46e5d04B178c70Edb"
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
//!           "caller": "0x239b092f5988fA7f1B134005f10D4ab4e1B7b688"
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
//!           "caller": "0xCF328CC212f4D234C59Da0ff4f2889Ef4fDb0aF2"
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

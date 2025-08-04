//! {
//!   "cases": [
//!     {
//!       "name": "init_value",
//!       "inputs": [
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0x42bd3e71397B96A940b180aB927BA7a869FdF892"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "inc",
//!           "calldata": [],
//!           "caller": "0x49d597604b03836194880f4eff2Bc090e47e9FFe"
//!         },
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0x49d597604b03836194880f4eff2Bc090e47e9FFe"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "inc",
//!           "calldata": [],
//!           "caller": "0x3170A028606B10CDb4148121059e857E45Bc867D"
//!         },
//!         {
//!           "method": "inc",
//!           "calldata": [],
//!           "caller": "0x3170A028606B10CDb4148121059e857E45Bc867D"
//!         },
//!         {
//!           "method": "dec",
//!           "calldata": [],
//!           "caller": "0x3170A028606B10CDb4148121059e857E45Bc867D"
//!         },
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0x3170A028606B10CDb4148121059e857E45Bc867D"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    uint public count;

    // Function to get the current count
    function get() public view returns (uint) {
        return count;
    }

    // Function to increment count by 1
    function inc() public {
        count += 1;
    }

    // Function to decrement count by 1
    function dec() public {
        count -= 1;
    }
}

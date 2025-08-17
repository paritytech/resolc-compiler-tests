//! {
//!   "cases": [
//!     {
//!       "name": "init_value",
//!       "inputs": [
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0xcb16f249831588c81f80da9995867f27c627e3f2"
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
//!           "caller": "0x04e31bb34864fc3fb503547e4956ae357679e7e2"
//!         },
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0x04e31bb34864fc3fb503547e4956ae357679e7e2"
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
//!           "caller": "0xeeb8154387a84832010ea0c108af51d8ea52fd29"
//!         },
//!         {
//!           "method": "inc",
//!           "calldata": [],
//!           "caller": "0xeeb8154387a84832010ea0c108af51d8ea52fd29"
//!         },
//!         {
//!           "method": "dec",
//!           "calldata": [],
//!           "caller": "0xeeb8154387a84832010ea0c108af51d8ea52fd29"
//!         },
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0xeeb8154387a84832010ea0c108af51d8ea52fd29"
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

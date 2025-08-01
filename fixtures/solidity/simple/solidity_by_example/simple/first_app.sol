//! {
//!   "cases": [
//!     {
//!       "name": "init_value",
//!       "inputs": [
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0xB1F0E3546A30b69e2B24bc157b9B3a66AdA299f5"
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
//!           "caller": "0x6f876Db5AddB5Da27CD117D9ca1d57Ac09F06b15"
//!         },
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0x6f876Db5AddB5Da27CD117D9ca1d57Ac09F06b15"
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
//!           "caller": "0x6c2dc34d6B3f413f63Be8125b6D732Be57E284d5"
//!         },
//!         {
//!           "method": "inc",
//!           "calldata": [],
//!           "caller": "0x6c2dc34d6B3f413f63Be8125b6D732Be57E284d5"
//!         },
//!         {
//!           "method": "dec",
//!           "calldata": [],
//!           "caller": "0x6c2dc34d6B3f413f63Be8125b6D732Be57E284d5"
//!         },
//!         {
//!           "method": "count",
//!           "calldata": [],
//!           "caller": "0x6c2dc34d6B3f413f63Be8125b6D732Be57E284d5"
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

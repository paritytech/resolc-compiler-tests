//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "10"
//!           ],
//!           "caller": "0xe6869cc98283ab53e8a1a5312857ef0be9d189fe"
//!         }
//!       ],
//!       "expected": [
//!         "15"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;

contract Test {
    uint8 constant ARRAY_SIZE = 10;

    function main(uint8[ARRAY_SIZE] memory array) public pure returns(uint8) {
        uint8 sum = 0;
        for(uint8 i = 0; i < 5; i++) {
            sum += array[i];
        }
        return sum;
    }
}

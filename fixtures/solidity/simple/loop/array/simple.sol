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
//!           "caller": "0xCa7B487EF7E9E78A0462d1870C4Bd75de321f32A"
//!         }
//!       ],
//!       "expected": [
//!         "55"
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
        for(uint8 i = 0; i < ARRAY_SIZE; i++) {
            sum += array[i];
        }
        return sum;
    }
}

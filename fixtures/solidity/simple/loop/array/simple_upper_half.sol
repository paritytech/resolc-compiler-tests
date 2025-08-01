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
//!           "caller": "0xf8808D84CB04E61FF0F5323035A90C3516F93d7d"
//!         }
//!       ],
//!       "expected": [
//!         "40"
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
        for(uint8 i = 5; i < 10; i++) {
            sum += array[i];
        }
        return sum;
    }
}

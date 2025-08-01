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
//!           "caller": "0x53dD34eFa388135CC7ea3BCB069D426c25bf76CC"
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

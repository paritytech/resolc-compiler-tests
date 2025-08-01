//! {
//!   "cases": [
//!     {
//!       "name": "none",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7",
//!             "2",
//!             "1",
//!             "8",
//!             "10",
//!             "3",
//!             "5",
//!             "4",
//!             "9",
//!             "6",
//!             "0"
//!           ],
//!           "caller": "0x865E0e6C3b1E937aA8D2bE6B60beB7a1f6Cb9003"
//!         }
//!       ],
//!       "expected": [
//!         "7",
//!         "2",
//!         "1",
//!         "8",
//!         "10",
//!         "3",
//!         "5",
//!         "4",
//!         "9",
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "ascending",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7",
//!             "2",
//!             "1",
//!             "8",
//!             "10",
//!             "3",
//!             "5",
//!             "4",
//!             "9",
//!             "6",
//!             "1"
//!           ],
//!           "caller": "0x397bBFC295Eba6EbB05D74d1665054f19a097029"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "2",
//!         "3",
//!         "4",
//!         "5",
//!         "6",
//!         "7",
//!         "8",
//!         "9",
//!         "10"
//!       ]
//!     },
//!     {
//!       "name": "descending",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7",
//!             "2",
//!             "1",
//!             "8",
//!             "10",
//!             "3",
//!             "5",
//!             "4",
//!             "9",
//!             "6",
//!             "2"
//!           ],
//!           "caller": "0x3dDe3AA6D519F3cD2D779785725DD4C283Be7C36"
//!         }
//!       ],
//!       "expected": [
//!         "10",
//!         "9",
//!         "8",
//!         "7",
//!         "6",
//!         "5",
//!         "4",
//!         "3",
//!         "2",
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;

contract Test {
    uint8 constant ARRAY_SIZE = 10;

    enum Direction {
        None,
        Ascending,
        Descending
    }

    function main(uint8[ARRAY_SIZE] memory array, Direction direction) public pure returns(uint8[ARRAY_SIZE] memory) {
        bool swapped = true;
        for(uint8 i = 0; i < ARRAY_SIZE - 1; i++) {
            swapped = false;
            for(uint8 j = 0; j < ARRAY_SIZE - i - 1; j++) {
                if ((direction == Direction.Ascending && array[j] > array[j + 1]) ||
                    (direction == Direction.Descending && array[j] < array[j + 1])) {
                    uint8 temp = array[j];
                    array[j] = array[j + 1];
                    array[j + 1] = temp;
                    swapped = true;
                }
            }
            if (!swapped) {
                break;
            }
        }
        return array;
    }

}
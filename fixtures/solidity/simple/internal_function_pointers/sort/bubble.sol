//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
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
//!           "caller": "0x8fa6db8600684bb64010c9930856863192d26cd2"
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
//!           "caller": "0x0cf555f691d7bab8a429b9e4976d5def0f51c17c"
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
//!           "caller": "0x2921bdd05002c00c103259c7f0490f5f3cf6bd47"
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

pragma solidity >=0.6.0;

contract Test {
    uint8 constant ARRAY_SIZE = 10;

    enum Direction {
        None,
        Ascending,
        Descending
    }

    // Comparison functions for ascending and descending order
    function ascending(uint8 a, uint8 b) internal pure returns (bool) {
        return a > b;
    }

    function descending(uint8 a, uint8 b) internal pure returns (bool) {
        return a < b;
    }

    // Recursive bubble sort function
    function bubbleSort(uint8[ARRAY_SIZE] memory array, uint8 start, function(uint8, uint8) internal pure returns (bool) compare) internal pure returns (uint8[ARRAY_SIZE] memory) {
        if(start >= ARRAY_SIZE - 1) {
            return array;
        }
        bool swapped = false;
        for(uint8 i = 0; i < ARRAY_SIZE - start - 1; i++) {
            if (compare(array[i], array[i + 1])) {
                uint8 temp = array[i];
                array[i] = array[i + 1];
                array[i + 1] = temp;
                swapped = true;
            }
        }
        if(!swapped) {
            return array;
        }
        return bubbleSort(array, start + 1, compare);
    }

    function main(uint8[ARRAY_SIZE] memory array, Direction direction) public pure returns(uint8[ARRAY_SIZE] memory) {
        // Assign function pointer based on direction
        function(uint8, uint8) internal pure returns (bool) compare;
        if (direction == Direction.Ascending) {
            compare = ascending;
        } else if (direction == Direction.Descending) {
            compare = descending;
        } else {
            return array;
        }
        return bubbleSort(array, 0, compare);
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "none",
//!       "inputs": [
//!         {
//!           "method": "mergeSort",
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
//!           "caller": "0x50a8406B6d5EF7979c1d31741CA82000ae7CAd6A"
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
//!           "method": "mergeSort",
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
//!           "caller": "0xbAb4A193481a32efFF00F43c9358cfA9aaFb57E6"
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
//!           "method": "mergeSort",
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
//!           "caller": "0x18eCe8544760270a954C380932f7B51e9D6046bE"
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

    // Iterative merge sort
    // with memory usage (O(n)) and complexity O(n*log(n))
    function mergeSort(uint8[ARRAY_SIZE] memory array, Direction direction) public pure returns(uint8[ARRAY_SIZE] memory) {
        uint8 size = 1;
        uint8[ARRAY_SIZE] memory tmp;

        while (size < ARRAY_SIZE) {
            uint8 ptr = 0;
            while (ptr < ARRAY_SIZE) {
                uint8 mid = ptr + size;
                if (mid > ARRAY_SIZE) {
                    mid = ARRAY_SIZE;
                }

                uint8 last = ptr + 2 * size;
                if (last > ARRAY_SIZE) {
                    last = ARRAY_SIZE;
                }

                uint8 ptr1 = ptr;
                uint8 ptr2 = ptr + size;

                while (ptr1 < mid && ptr2 < last) {
                    if (
                        (direction == Direction.None) ||
                        (direction == Direction.Ascending && array[ptr1] < array[ptr2]) ||
                        (direction == Direction.Descending && array[ptr1] > array[ptr2])
                    ) {
                        tmp[ptr] = array[ptr1++];
                    } else {
                        tmp[ptr] = array[ptr2++];
                    }
                    ptr++;
                }

                while (ptr1 < mid) {
                    tmp[ptr++] = array[ptr1++];
                }

                while (ptr2 < last) {
                    tmp[ptr++] = array[ptr2++];
                }
            }
            for(uint8 i = 0; i < ARRAY_SIZE; i++)
                array[i] = tmp[i];
            size *= 2;
        }
        return array;
    }
}
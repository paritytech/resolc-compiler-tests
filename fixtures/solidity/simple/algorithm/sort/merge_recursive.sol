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
//!             "0",
//!             "10",
//!             "0"
//!           ],
//!           "caller": "0x5d41E9d8CeCa5aCED50F972A345bF580D3Ce6169"
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
//!             "0",
//!             "10",
//!             "1"
//!           ],
//!           "caller": "0x14A17624B46858C78971F3Fbe1d18371314AaC0B"
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
//!             "0",
//!             "10",
//!             "2"
//!           ],
//!           "caller": "0x777F66DC1f1CeCa8AA24b3a0DC2dB635ab6CC9bc"
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

    function merge(
        uint8[ARRAY_SIZE] memory array,
        uint8 begin,
        uint8 end,
        uint8 mid,
        Direction direction
    )
        private pure
    {
        uint8[ARRAY_SIZE] memory tmp;
        for(uint8 i = begin; i < end; i++) {
            tmp[i] = array[i];
        }

        uint8 ptr = begin;
        uint8 ptr1 = begin;
        uint8 ptr2 = mid;

        while (ptr1 < mid && ptr2 < end) {
            if(
                (direction == Direction.None) ||
                (direction == Direction.Ascending && tmp[ptr1] < tmp[ptr2]) ||
                (direction == Direction.Descending && tmp[ptr1] > tmp[ptr2])
            ) {
                array[ptr] = tmp[ptr1++];
            } else {
                array[ptr] = tmp[ptr2++];
            }
            ptr++;
        }

        while (ptr1 < mid) {
            array[ptr++] = tmp[ptr1++];
        }

        while (ptr2 < end) {
            array[ptr++] = tmp[ptr2++];
        }
    }

    function mergeSort(
        uint8[ARRAY_SIZE] memory array,
        uint8 begin,
        uint8 end,
        Direction direction
    )
        public
        pure
        returns(uint8[ARRAY_SIZE] memory)
    {
        if (begin + 1 == end) {
            return array;
        }

        uint8 mid = (begin + end) / 2;
        mergeSort(array, begin, mid, direction);
        mergeSort(array, mid, end, direction);
        merge(array, begin, end, mid, direction);
        return array;
    }
}
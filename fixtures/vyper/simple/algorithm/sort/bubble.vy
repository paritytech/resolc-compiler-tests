#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "none",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "7",
#!             "2",
#!             "1",
#!             "8",
#!             "10",
#!             "3",
#!             "5",
#!             "4",
#!             "9",
#!             "6",
#!             "0"
#!           ],
#!           "caller": "0x932b3Cc91be23DBC12176fFF379A8430AB004276"
#!         }
#!       ],
#!       "expected": [
#!         "7",
#!         "2",
#!         "1",
#!         "8",
#!         "10",
#!         "3",
#!         "5",
#!         "4",
#!         "9",
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "ascending",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "7",
#!             "2",
#!             "1",
#!             "8",
#!             "10",
#!             "3",
#!             "5",
#!             "4",
#!             "9",
#!             "6",
#!             "1"
#!           ],
#!           "caller": "0x580298B27C3707a83607fF8C8ffc57c8B9e88A6F"
#!         }
#!       ],
#!       "expected": [
#!         "1",
#!         "2",
#!         "3",
#!         "4",
#!         "5",
#!         "6",
#!         "7",
#!         "8",
#!         "9",
#!         "10"
#!       ]
#!     },
#!     {
#!       "name": "descending",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "7",
#!             "2",
#!             "1",
#!             "8",
#!             "10",
#!             "3",
#!             "5",
#!             "4",
#!             "9",
#!             "6",
#!             "2"
#!           ],
#!           "caller": "0xa082240664424054A397ccD56511a8f0f91835A3"
#!         }
#!       ],
#!       "expected": [
#!         "10",
#!         "9",
#!         "8",
#!         "7",
#!         "6",
#!         "5",
#!         "4",
#!         "3",
#!         "2",
#!         "1"
#!       ]
#!     }
#!   ]
#! }

ARRAY_SIZE: constant(uint8) = 10

DirectionNone: constant(uint8) = 0
DirectionAscending: constant(uint8) = 1
DirectionDescending: constant(uint8) = 2

@external
@pure
def main(_array: uint8[ARRAY_SIZE], direction: uint8) -> uint8[ARRAY_SIZE]:
    array: uint8[ARRAY_SIZE] = _array
    swapped: bool = True
    for i: uint8 in range(ARRAY_SIZE - 1):
        swapped = False
        for j: uint8 in range(ARRAY_SIZE - 1):
            if not j < ARRAY_SIZE - i - 1:
                break
            if (direction == DirectionAscending and array[j] > array[j + 1]) or (direction == DirectionDescending and array[j] < array[j + 1]):
                temp: uint8 = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
                swapped = True
        if not swapped:
            break
    return array

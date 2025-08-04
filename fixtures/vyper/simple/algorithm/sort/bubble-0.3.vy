#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x1097e1284E68fA42D60cCf095E6976B2Efc31650"
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
#!           "caller": "0x020f7c444F32F0785b207c80De15fEd01B0347aa"
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
#!           "caller": "0x50018433B62a7b9475deC20f3321ba786D1b1A20"
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
    for i in range(ARRAY_SIZE - 1):
        swapped = False
        for j in range(ARRAY_SIZE - 1):
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

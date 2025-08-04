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
#!           "caller": "0xCD7f9De4220669a5D124bC2b458C91Ca8Fe055e2"
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
#!           "caller": "0x4918ae379Fd2308723EbFA01508443E541c25d71"
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
#!           "caller": "0x526A5Bc787C2D30d814d9497E7590778EdDE1Bd1"
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

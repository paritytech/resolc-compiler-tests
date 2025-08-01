#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4"
#!           ],
#!           "caller": "0x3aCA52eC893300B48b51C27DCFf948fBb53E6b2e"
#!         }
#!       ],
#!       "expected": [
#!         "64"
#!       ]
#!     }
#!   ]
#! }

SIZE: constant(uint8) = 4

@external
@pure
def main(_array: uint8[SIZE]) -> uint8:
    array: uint8[SIZE] = _array
    array[3] = 106
    array[1] = 42

    return array[3] - array[1]

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
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "10"
#!           ],
#!           "caller": "0x1Db67ccb307D6ea08A1d7E7E5601B7de3615bCe2"
#!         }
#!       ],
#!       "expected": [
#!         "55"
#!       ]
#!     }
#!   ]
#! }

ARRAY_SIZE: constant(uint8) = 10

@external
@pure
def main(array: uint8[ARRAY_SIZE]) -> uint8:
    sum: uint8 = 0
    for i in range(0, ARRAY_SIZE):
        sum += array[i]
    return sum

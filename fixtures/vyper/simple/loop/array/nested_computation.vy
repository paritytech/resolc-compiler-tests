#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0xD2a5aAd34fA1184e3e59922743b134A5e5B23221"
#!         }
#!       ],
#!       "expected": [
#!         "3025"
#!       ]
#!     }
#!   ]
#! }

ARRAY_SIZE: constant(uint8) = 10

@external
@pure
def main(array: uint8[ARRAY_SIZE]) -> uint256:
    sum: uint256 = 0
    for i: uint8 in range(0, ARRAY_SIZE):
        for j: uint8 in range(0, ARRAY_SIZE):
            sum += convert(array[i] * array[j], uint256)
    return sum

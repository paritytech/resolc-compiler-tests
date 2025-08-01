#! {
#!   "modes": [
#!     "V 0.3.9",
#!     "V 0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x238C1dd7912aF5949f024BF9fA1483DEA8a1bf13"
#!         }
#!       ],
#!       "expected": [
#!         "-10"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> int8:
    sum: int8 = 0
    for i in range(-10, 10):
        sum += i
    return sum

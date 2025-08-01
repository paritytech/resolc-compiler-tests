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
#!           "calldata": [],
#!           "caller": "0x4C768c3A8Df49A3e97860Be6c3d927eCCbA5fF3c"
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
    for i: int8 in range(-10, 10):
        sum += i
    return sum

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
#!           "caller": "0x7Bb1b69B09eb9Ed693b584b29E2b1F450A4B97C6"
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

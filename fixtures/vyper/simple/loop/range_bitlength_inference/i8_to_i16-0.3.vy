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
#!           "caller": "0xe6A974A66148A5315806B948135ce1b3F64c0030"
#!         }
#!       ],
#!       "expected": [
#!         "-128"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i in range(-128, 128):
        sum += i
    return sum

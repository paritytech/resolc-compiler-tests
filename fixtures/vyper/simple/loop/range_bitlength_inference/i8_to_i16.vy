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
#!           "caller": "0x60379b6FaFb6f6DCfbd6ED628cc532fD090e21d7"
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
    for i: int16 in range(-128, 128):
        sum += i
    return sum

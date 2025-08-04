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
#!           "caller": "0x0E9A233C2d39F21cA9ca33286473189A6Ed189bD"
#!         }
#!       ],
#!       "expected": [
#!         "-200"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i: int16 in range(-200, 200):
        sum += i
    return sum

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
#!           "caller": "0xA7796Ac5a3E0b14f10944275995D19e27c542192"
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

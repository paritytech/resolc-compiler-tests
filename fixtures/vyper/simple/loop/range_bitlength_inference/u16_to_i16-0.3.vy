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
#!           "caller": "0xc409DCFFaCDa013Edad3DaB47A30Bb92C59C8e53"
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
    for i in range(-200, 200):
        sum += i
    return sum

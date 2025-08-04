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
#!           "caller": "0x08a469664214673bD5c3bF49A876B8E2e7866559"
#!         }
#!       ],
#!       "expected": [
#!         "2545"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> uint16:
    sum: uint16 = 0
    for i in range(250, 260):
        sum += i
    return sum

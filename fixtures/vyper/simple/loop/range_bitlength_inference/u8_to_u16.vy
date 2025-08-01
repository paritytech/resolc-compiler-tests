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
#!           "caller": "0xF98C6B01C6c8f2fb5350dDf0c39500573474F053"
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
    for i: uint16 in range(250, 260):
        sum += i
    return sum

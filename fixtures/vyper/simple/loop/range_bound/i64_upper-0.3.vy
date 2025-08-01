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
#!           "caller": "0x391b77369F3C479B707074c900B2c40769f1C37C"
#!         }
#!       ],
#!       "expected": [
#!         "10"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> uint64:
    sum: uint64 = 0
    for i in range(9223372036854775797, 9223372036854775807):
        sum += 1
    return sum

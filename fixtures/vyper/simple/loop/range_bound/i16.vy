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
#!           "caller": "0x0f769A3cf8859de512fc5D825a61B53E466fc9c5"
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
    for i: int16 in range(-32768, -32758):
        sum += 1
    return sum

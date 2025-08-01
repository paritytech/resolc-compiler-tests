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
#!           "caller": "0xc11B6552964F8b767fa1DD0b6B381577549Fd63C"
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
    for i in range(65525, 65535):
        sum += 1
    return sum

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
#!           "caller": "0xBDFa32f899f183A085932515160197c76e7E06aB"
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
    for i: uint256 in range(245, 255):
        sum += 1
    return sum

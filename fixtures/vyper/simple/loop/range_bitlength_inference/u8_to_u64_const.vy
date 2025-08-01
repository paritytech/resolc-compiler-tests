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
#!           "caller": "0x76cCFD5ca826ff1C0f57DAC04F7523BBF6aE793B"
#!         }
#!       ],
#!       "expected": [
#!         "55"
#!       ]
#!     }
#!   ]
#! }

LIMIT: constant(uint64) = 10

@external
@pure
def main() -> uint64:
    sum: uint64 = 0
    for i: uint64 in range(0, LIMIT + 1):
        sum += i
    return sum

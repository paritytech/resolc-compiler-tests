#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x713092202BAd6d19442fC7B28751552262f7133E"
#!         }
#!       ],
#!       "expected": [
#!         "55"
#!       ]
#!     }
#!   ]
#! }

LIMIT: constant(uint256) = 11

@external
@pure
def main() -> uint256:
    sum: uint256 = 0
    for i in range(0, LIMIT):
        sum += i
    return sum

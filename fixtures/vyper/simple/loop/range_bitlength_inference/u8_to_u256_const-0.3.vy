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
#!           "caller": "0x39Ed5c93E3d8D924a75066d67BBE7191B2E222b6"
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

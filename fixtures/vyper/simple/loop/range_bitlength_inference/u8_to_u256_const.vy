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
#!           "caller": "0x008219392246b710d664F1E8921779C5D3a2Fd44"
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
    for i: uint256 in range(0, LIMIT):
        sum += i
    return sum

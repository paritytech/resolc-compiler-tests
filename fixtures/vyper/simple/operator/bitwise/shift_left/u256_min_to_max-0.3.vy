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
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xb71cf197AF9d6659a2A4a1bBa52dFD0C2dB8B630"
#!         }
#!       ],
#!       "expected": [
#!         "57896044618658097711785492504343953926634992332820282019728792003956564819968"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256) -> uint256:
    return shift(a, 255)

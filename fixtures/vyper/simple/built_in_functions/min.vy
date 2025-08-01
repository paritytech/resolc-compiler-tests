#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "min",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "5",
#!             "10"
#!           ],
#!           "caller": "0x4c45F7bFCCeB8f8BB2e02dB70a8B310B1b1d16a2"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     }
#!   ]
#! }

@external
def main(a: uint256, b: uint256) -> uint256:
    return min(a, b)

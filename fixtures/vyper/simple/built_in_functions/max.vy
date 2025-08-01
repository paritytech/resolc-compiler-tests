#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "5",
#!             "10"
#!           ],
#!           "caller": "0x7e45c2b936647D6ff2BCDE818194d43a4dDA089a"
#!         }
#!       ],
#!       "expected": [
#!         "10"
#!       ]
#!     }
#!   ]
#! }

@external
def main(a: uint256, b: uint256) -> uint256:
    return max(a, b)

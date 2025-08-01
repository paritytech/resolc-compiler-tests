#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x1bb505CAFA915DfeBA107121e627971288D38740"
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

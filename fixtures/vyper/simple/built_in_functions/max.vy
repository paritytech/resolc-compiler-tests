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
#!           "caller": "0x486D1AB98369a4f5C827b4DDBcf99FA2aDf00638"
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

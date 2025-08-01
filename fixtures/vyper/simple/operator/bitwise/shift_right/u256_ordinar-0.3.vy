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
#!             "168"
#!           ],
#!           "caller": "0xF5734521113A1dB1c024669aE9c9140B817E69Fb"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256) -> uint256:
    return shift(a, -2)

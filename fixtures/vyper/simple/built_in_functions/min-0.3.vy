#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x52b0EbCe00054f7205229f9fFDb087aCe96b970A"
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

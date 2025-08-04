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
#!           "calldata": [
#!             "50"
#!           ],
#!           "caller": "0xa96b935fB1aD4E46c1eF2a5552AA2D5885c73efB"
#!         }
#!       ],
#!       "expected": [
#!         "75"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    inner: uint8 = 25
    inner += witness
    return inner

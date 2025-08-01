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
#!             "4"
#!           ],
#!           "caller": "0x92d7bbc10C3B9c7241856E9627F31B1E611B0cD8"
#!         }
#!       ],
#!       "expected": [
#!         "64516"
#!       ]
#!     }
#!   ]
#! }

SCRUTINEE: constant(uint8) = 42

@external
@pure
def main(witness: uint8) -> uint256:
    return 65536 - 255 * convert(witness, uint256)

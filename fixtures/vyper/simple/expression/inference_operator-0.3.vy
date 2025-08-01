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
#!             "4"
#!           ],
#!           "caller": "0xf35986FDd3Ec713AECA088E7Eb53778c3999b75f"
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

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
#!           "caller": "0x82E761a8F88e6cE1d651A8B6277F8dD4668Bd2B4"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    return 14 - (witness // 2 + 5) * 2

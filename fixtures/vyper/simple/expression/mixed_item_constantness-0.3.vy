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
#!             "25"
#!           ],
#!           "caller": "0xFC0F70F66deAe976CFBbCc33a6C316fC1645fFa1"
#!         }
#!       ],
#!       "expected": [
#!         "131"
#!       ]
#!     }
#!   ]
#! }

CONST: constant(uint256) = 42

@external
@pure
def main(witness: uint256) -> uint256:
    local: uint256 = 64

    return CONST + local + witness

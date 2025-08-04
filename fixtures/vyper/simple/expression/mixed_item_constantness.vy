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
#!             "25"
#!           ],
#!           "caller": "0x0837D4b13b1163daED9F6549C8198C7b65ef4072"
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

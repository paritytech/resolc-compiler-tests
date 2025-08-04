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
#!             "42"
#!           ],
#!           "caller": "0x068E24383277499c1e5E7A42fA1FF03Eccc27302"
#!         }
#!       ],
#!       "expected": [
#!         "158"
#!       ]
#!     }
#!   ]
#! }

SCRUTINEE: constant(uint8) = 42

@external
@pure
def main(witness: uint8) -> uint8:
    conditional: uint8 = 0
    if SCRUTINEE == 64:
        conditional = 100
    else:
        conditional = 200
    return conditional - witness
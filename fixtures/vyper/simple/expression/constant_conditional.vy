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
#!             "42"
#!           ],
#!           "caller": "0xbF8527E4E2EA4Da8E59F36927192D77D6155c77f"
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
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
#!           "caller": "0xc48787Ff6d240242c4cB0b6dA91b3538BBE0F2E0"
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

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
#!           "caller": "0x8BF60106BEb40dcf52B333f1a4099217E92De7fb"
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

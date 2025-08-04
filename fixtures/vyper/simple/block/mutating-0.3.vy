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
#!             "50"
#!           ],
#!           "caller": "0x019618eF2c00317Da47E3E4b58fb5f34f518D53e"
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

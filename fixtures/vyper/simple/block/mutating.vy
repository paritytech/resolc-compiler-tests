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
#!             "50"
#!           ],
#!           "caller": "0xFD80b87a1f475628A36aBc52fA736B8a46787ED4"
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

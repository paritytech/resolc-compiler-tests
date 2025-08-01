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
#!           "caller": "0x97aac9333f7879A7Dd7f8586Cdc216fac6c9bf6b"
#!         }
#!       ],
#!       "expected": [
#!         "12"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    return 1 + (2 + 2 * witness) + 1

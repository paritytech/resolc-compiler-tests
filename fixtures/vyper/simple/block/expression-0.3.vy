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
#!           "caller": "0x0d835b4f6b6A6d9dE206e518DC8A7179F160Fc1b"
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

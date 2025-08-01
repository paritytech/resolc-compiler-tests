#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0xFE19eECc94F285B038d364a0B242a8e1f1eBcdb6"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0xAE79100f6c429D55fCdb5e1b4b7924dc68e63Ad8"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "255"
#!           ],
#!           "caller": "0x0ebE3E23dCEA432962238bcF0F318D6296cC5045"
#!         }
#!       ],
#!       "expected": [
#!         "255"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint8) -> int128:
    return convert(a, int128)

#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "one",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x0e7cc1668f7F2b68dd1C5034417609668bD486B5"
#!         }
#!       ],
#!       "expected": [
#!         "58"
#!       ]
#!     },
#!     {
#!       "name": "two",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "100"
#!           ],
#!           "caller": "0x4e07f2F00a7eD1cFBD16cbF3eE2C8eE9F47E9b63"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

SCRUTINEE: constant(uint8) = 42

@external
@pure
def main(witness: uint8) -> uint8:
    _match: uint8 = 0
    if SCRUTINEE == 0:
        _match = 10
    elif SCRUTINEE == 1:
        _match = 20
    elif SCRUTINEE == 42:
        _match = 100
    else:
        _match = 255 - SCRUTINEE
    return _match - witness

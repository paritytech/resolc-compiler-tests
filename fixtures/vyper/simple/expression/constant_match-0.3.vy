#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xa6fe893307dEd51A9dF864bCE0f9494243826919"
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
#!           "caller": "0x922B80674aB90e8751A87d4435098b1e2bc86191"
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

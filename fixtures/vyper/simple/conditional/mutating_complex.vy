#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "conditionTrue",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0",
#!             "0",
#!             "1"
#!           ],
#!           "caller": "0x827F8874fAcC092E96F197c966e3f820D17AEC82"
#!         }
#!       ],
#!       "expected": [
#!         "1000256"
#!       ]
#!     },
#!     {
#!       "name": "conditionFalse",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0xd90a5706aDEF4F97444eA5eb98FDaFCC9529a466"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

struct Data:
    a: bool
    b: uint8
    c: uint256

@external
@pure
def main(_witness: Data, condition:bool) -> uint256:
    witness: Data = _witness
    if condition:
        witness = Data(
            a=True,
            b=255,
            c=1000000
        )

    if witness.a:
        return 1 + convert(witness.b, uint256) + witness.c
    else:
        return 0 + convert(witness.b, uint256) + witness.c

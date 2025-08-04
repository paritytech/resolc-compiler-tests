#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xF2c53989BB771cAA85Bf5D71718Ec5d367a9C36C"
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
#!           "caller": "0x00059a1e582aA8031813Ba29B71429c119763FD2"
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
        witness = Data({
            a: True,
            b: 255,
            c: 1000000
        })

    if witness.a:
        return 1 + convert(witness.b, uint256) + witness.c
    else:
        return 0 + convert(witness.b, uint256) + witness.c

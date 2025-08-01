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
#!           "caller": "0xcEA7D2a365466047969Cd1C628d1490964890009"
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
#!           "caller": "0x9F6Ad6875D49B902c47187A015B67C11BAAdd68D"
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

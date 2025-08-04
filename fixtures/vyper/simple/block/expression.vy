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
#!           "caller": "0x0f3103edb0577045223C97A7EA4CD6DfDe872a6f"
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

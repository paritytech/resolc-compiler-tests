#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "456789765435678908765"
#!           ],
#!           "caller": "0x47895B951AEcb80B41184cFf960b62d488de2866"
#!         }
#!       ],
#!       "expected": [
#!         "456789765435678908765"
#!       ]
#!     },
#!     {
#!       "name": "negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-3423453453453453454567897345346789345340584375465"
#!           ],
#!           "caller": "0x27dB7692802D7aBe211cB9578ae76Aef7F325Ed9"
#!         }
#!       ],
#!       "expected": [
#!         "3423453453453453454567897345346789345340584375465"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int256) -> int256:
    return abs(a)

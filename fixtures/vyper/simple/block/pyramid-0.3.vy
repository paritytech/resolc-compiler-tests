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
#!           "caller": "0x46C140046732724DB7DF245f0A5Dfa5A1F416CbB"
#!         }
#!       ],
#!       "expected": [
#!         "16"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    return 1 + (
        2 + (
            3 + (
                witness
            ) + 3
        ) + 2
    ) + 1

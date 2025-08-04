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
#!             "16"
#!           ],
#!           "caller": "0x1d7c1c6A0487aea0Ce19f0b30bAD59bF87f83Fd3"
#!         }
#!       ],
#!       "expected": [
#!         "81"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(witness: uint8) -> uint8:
    local1: uint8 = 3
    local2: uint8 = 5
    local3: uint8 = 2

    return 19 * 3 - 8 / local1 + (witness / (local2 - 3) + 5) * (8 / local3 / 2)

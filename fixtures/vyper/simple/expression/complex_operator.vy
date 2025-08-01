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
#!             "16"
#!           ],
#!           "caller": "0x00d1E52bA04EC99946479F87385D75602Aa8A415"
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

    return 19 * 3 - 8 // local1 + (witness // (local2 - 3) + 5) * (8 // local3 // 2)

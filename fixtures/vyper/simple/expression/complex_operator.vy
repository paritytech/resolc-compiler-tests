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
#!           "caller": "0x90eF79B12e5F78cf7d108EAF3b124ddF0fB21CeC"
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

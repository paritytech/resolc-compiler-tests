#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "0x03",
#!             "0x05",
#!             "0x02"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x7CA38FFCa395dF1719C0384520165E0001A3cd99"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "16"
#!           ],
#!           "caller": "0x7CA38FFCa395dF1719C0384520165E0001A3cd99"
#!         }
#!       ],
#!       "expected": [
#!         "81"
#!       ]
#!     }
#!   ]
#! }

field_1: immutable(uint8)
field_2: immutable(uint8)
field_3: immutable(uint8)

@deploy
def __init__(a: uint8, b: uint8, c: uint8):
    field_1 = a
    field_2 = b
    field_3 = c

@external
def main(witness: uint8) -> uint8:
    return 19 * 3 - 8 // field_1 + (witness // (field_2 - 3) + 5) * (8 // field_3 // 2)

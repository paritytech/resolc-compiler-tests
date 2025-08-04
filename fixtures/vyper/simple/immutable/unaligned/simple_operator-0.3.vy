#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x96729b493688f2A1CaABca53B4b5D0304A191ca2"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "12"
#!           ],
#!           "caller": "0x96729b493688f2A1CaABca53B4b5D0304A191ca2"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

field_1: immutable(uint8)
field_2: immutable(uint8)
field_3: immutable(uint8)

@external
def __init__(a: uint8, b: uint8, c: uint8):
    field_1 = a
    field_2 = b
    field_3 = c

@external
def main(witness: uint8) -> uint8:
    return witness + field_1 * field_2 * field_3

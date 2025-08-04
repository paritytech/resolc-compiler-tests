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
#!           "caller": "0xe76D4B3d74C6f3a6D0Be340185031443d2239B96"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "12"
#!           ],
#!           "caller": "0xe76D4B3d74C6f3a6D0Be340185031443d2239B96"
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

@deploy
def __init__(a: uint8, b: uint8, c: uint8):
    field_1 = a
    field_2 = b
    field_3 = c

@external
def main(witness: uint8) -> uint8:
    return witness + field_1 * field_2 * field_3

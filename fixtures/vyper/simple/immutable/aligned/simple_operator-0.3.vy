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
#!           "caller": "0x52e68dbC6F559a0F843aA69E3Ea465d7e109B346"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "12"
#!           ],
#!           "caller": "0x52e68dbC6F559a0F843aA69E3Ea465d7e109B346"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

field_1: immutable(uint256)
field_2: immutable(uint256)
field_3: immutable(uint256)

@external
def __init__(a: uint256, b: uint256, c: uint256):
    field_1 = a
    field_2 = b
    field_3 = c

@external
def main(witness: uint8) -> uint8:
    return witness + convert(field_1, uint8) * convert(field_2, uint8) * convert(field_3, uint8)

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
#!           "caller": "0x6525De66dbe1410Ed5DCF627a21812893c20c01f"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "16"
#!           ],
#!           "caller": "0x6525De66dbe1410Ed5DCF627a21812893c20c01f"
#!         }
#!       ],
#!       "expected": [
#!         "81"
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
    return 19 * 3 - 8 / convert(field_1, uint8) + (witness / (convert(field_2, uint8) - 3) + 5) * (8 / convert(field_3, uint8) / 2)

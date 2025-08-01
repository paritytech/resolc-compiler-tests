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
#!             "12"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "3",
#!               "5",
#!               "2"
#!             ]
#!           },
#!           "caller": "0xceAD49367a65B7C9222525E84809b5D94d89cF84"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

field_1: uint256
field_2: uint256
field_3: uint256

@external
def main(witness: uint8) -> uint8:
    return witness + convert(self.field_1, uint8) * convert(self.field_2, uint8) * convert(self.field_3, uint8)

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
#!             "12"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "0x03",
#!               "0x05",
#!               "0x02"
#!             ]
#!           },
#!           "caller": "0x669D8eaD0bB6733CE76413030AaEe19ca802c2E3"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

field_1: uint8
field_2: uint8
field_3: uint8

@external
def main(witness: uint8) -> uint8:
    return witness + self.field_1 * self.field_2 * self.field_3

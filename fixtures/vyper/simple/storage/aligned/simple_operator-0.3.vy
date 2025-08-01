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
#!               "3",
#!               "5",
#!               "2"
#!             ]
#!           },
#!           "caller": "0x7cfBb3f35a3F75388ffDC6088D18f424bA712845"
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

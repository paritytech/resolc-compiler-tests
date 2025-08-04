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
#!           "caller": "0x2c6Adf4577eAa9c0c82A37D108fBA1faD712637A"
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

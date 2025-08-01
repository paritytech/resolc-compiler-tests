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
#!             "42"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "1",
#!               "2",
#!               "3",
#!               "4"
#!             ]
#!           },
#!           "caller": "0x4a72043db604Ce29C0F29F3Df1391aCd193c71f8"
#!         }
#!       ],
#!       "expected": [
#!         "126"
#!       ]
#!     }
#!   ]
#! }

data: uint256[4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3] = convert(argument, uint256)

    return argument + TEST + convert(self.data[3], uint8)

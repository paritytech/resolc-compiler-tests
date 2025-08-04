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
#!           "caller": "0xd9c58555b5944A2c572FA60828C786907A6401e7"
#!         }
#!       ],
#!       "expected": [
#!         "130"
#!       ]
#!     }
#!   ]
#! }

data: uint256[4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3] += convert(argument, uint256)

    return argument + TEST + convert(self.data[3], uint8)

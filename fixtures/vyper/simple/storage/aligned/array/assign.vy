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
#!           "caller": "0xC0c637eEB5b7B127c83F46Fc0e9bC696d4705447"
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

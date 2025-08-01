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
#!               "4",
#!               "5",
#!               "6",
#!               "7",
#!               "8",
#!               "9",
#!               "10",
#!               "11",
#!               "12",
#!               "13",
#!               "14",
#!               "15",
#!               "16"
#!             ]
#!           },
#!           "caller": "0xF6686A33B93F638b6632c72e064E1e2d9D5c3258"
#!         }
#!       ],
#!       "expected": [
#!         "142"
#!       ]
#!     }
#!   ]
#! }

data: uint256[4][4]

TEST: constant(uint8) = 42

@external
def main(argument: uint8) -> uint8:
    self.data[3][3] += convert(argument, uint256)

    return argument + TEST + convert(self.data[3][3], uint8)

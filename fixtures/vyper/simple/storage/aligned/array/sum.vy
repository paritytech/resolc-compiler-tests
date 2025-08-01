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
#!               "20",
#!               "15",
#!               "10",
#!               "5"
#!             ]
#!           },
#!           "caller": "0x5d2edc2713B31fc4525Bb84fb7bc05755DC7fc46"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     }
#!   ]
#! }

data: uint256[4]

@external
def main(argument: uint8) -> uint8:
    sum: uint8 = 0
    for i: uint256 in range(0, 4):
        sum += convert(self.data[i], uint8)
    return sum

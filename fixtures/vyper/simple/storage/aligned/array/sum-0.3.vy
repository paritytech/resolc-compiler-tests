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
#!               "20",
#!               "15",
#!               "10",
#!               "5"
#!             ]
#!           },
#!           "caller": "0xEB59297d396a019Ca7D0fb449b188C91CFf039C1"
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
    for i in range(0, 4):
        sum += convert(self.data[i], uint8)
    return sum

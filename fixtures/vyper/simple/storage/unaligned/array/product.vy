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
#!               "0x0014",
#!               "0x000f",
#!               "0x000a",
#!               "0x0005"
#!             ]
#!           },
#!           "caller": "0x5e245ED050bcB8B532b1Cb7f93B93A0C67eC5ACc"
#!         }
#!       ],
#!       "expected": [
#!         "15000"
#!       ]
#!     }
#!   ]
#! }

data: uint8[4]

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i: uint256 in range(0, 4):
        product *= convert(self.data[i], uint256)
    return product

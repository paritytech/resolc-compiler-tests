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
#!           "caller": "0x1C421aC41a425DDf2898834a6994132087d922Fa"
#!         }
#!       ],
#!       "expected": [
#!         "15000"
#!       ]
#!     }
#!   ]
#! }

struct Data:
    a: uint8
    b: uint8
    c: uint8
    d: uint8

data: Data

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    product *= convert(self.data.a, uint256)
    product *= convert(self.data.b, uint256)
    product *= convert(self.data.c, uint256)
    product *= convert(self.data.d, uint256)
    return product

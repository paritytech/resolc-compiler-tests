#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "20",
#!             "15",
#!             "10",
#!             "5"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0xD3D1275F155201A0885732B57e2d60f40f6fcAFb"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0xD3D1275F155201A0885732B57e2d60f40f6fcAFb"
#!         }
#!       ],
#!       "expected": [
#!         "15000"
#!       ]
#!     }
#!   ]
#! }

data: immutable(uint8[4])

@external
def __init__(input: uint8[4]):
    data = input

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    for i in range(0, 4):
        product *= convert(data[i], uint256)
    return product

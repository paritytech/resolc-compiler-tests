#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x2daaE5871765f9cc817f7eB1c4b8161F9Fca5d94"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x2daaE5871765f9cc817f7eB1c4b8161F9Fca5d94"
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

data: immutable(Data)

@deploy
def __init__(input: Data):
    data = input

@external
def main(argument: uint256) -> uint256:
    product: uint256 = 1
    product *= convert(data.a, uint256)
    product *= convert(data.b, uint256)
    product *= convert(data.c, uint256)
    product *= convert(data.d, uint256)
    return product

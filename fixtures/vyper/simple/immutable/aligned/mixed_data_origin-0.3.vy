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
#!             "0x05",
#!             "0x07"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0xBF54293100160D67ceb10B705F461960D8e04f9E"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0xBF54293100160D67ceb10B705F461960D8e04f9E"
#!         }
#!       ],
#!       "expected": [
#!         "148"
#!       ]
#!     }
#!   ]
#! }

SOMETHING: constant(uint256) = 42
SOMETHING_ELSE: constant(uint256) = 88

struct Data:
    c: uint256
    d: uint256

a: immutable(uint256)
b: immutable(uint256)

@external
def __init__(x: uint256, y: uint256):
    a = x
    b = y

@internal
def inner(data: Data, _value: uint256, literal: uint8) -> uint256:
    return ((a + data.c + b + data.d + _value) * convert(literal, uint256) * SOMETHING - SOMETHING_ELSE) / 1000

@external
def main(_value: uint256) -> uint256:
    data: Data = Data({c: 10, d: 20})

    return self.inner(data, _value, 42)

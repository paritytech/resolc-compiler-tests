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
#!             "0x05",
#!             "0x0b"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x5272bDE0C00a665cA9356B4cEB2d2e12ec1e1b92"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x5272bDE0C00a665cA9356B4cEB2d2e12ec1e1b92"
#!         }
#!       ],
#!       "expected": [
#!         "1024"
#!       ]
#!     }
#!   ]
#! }

a: immutable(uint256)
b: immutable(uint256)

@deploy
def __init__(x: uint256, y: uint256):
    a = x
    b = y

@internal
def double(_value: uint256) -> uint256:
    return _value * 2

@internal
def triple(_value: uint256) -> uint256:
    return 3 * _value

@internal
def quadruple(_value: uint256) -> uint256:
    return _value * 4

@external
def main(_value: uint256) -> uint256:
    return a + self.quadruple(self.triple(self.double(_value))) + b

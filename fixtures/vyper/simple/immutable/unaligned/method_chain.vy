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
#!           "caller": "0x3b7419e07f419383Cc1e8d3dF1d3fCBB71793A8c"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x3b7419e07f419383Cc1e8d3dF1d3fCBB71793A8c"
#!         }
#!       ],
#!       "expected": [
#!         "1024"
#!       ]
#!     }
#!   ]
#! }

a: immutable(uint8)
b: immutable(uint8)

@deploy
def __init__(x: uint8, y: uint8):
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
    return convert(a, uint256) + self.quadruple(self.triple(self.double(_value))) + convert(b, uint256)

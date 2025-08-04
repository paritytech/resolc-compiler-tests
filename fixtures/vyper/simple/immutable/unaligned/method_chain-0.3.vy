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
#!             "0x0b"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0xc7336a5f83e079A9CCb66e766Caf4dEb6904b494"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0xc7336a5f83e079A9CCb66e766Caf4dEb6904b494"
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

@external
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

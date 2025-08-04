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
#!           "caller": "0x0755369911E73f2bA56C3f39fD3DA88595A0FB7f"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x0755369911E73f2bA56C3f39fD3DA88595A0FB7f"
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

@external
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

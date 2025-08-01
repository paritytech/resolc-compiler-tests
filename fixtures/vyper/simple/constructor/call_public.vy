#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "success",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "5",
#!             "42"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x414d95E1af5FB713f997bcaD5595f089C19E6B72"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x414d95E1af5FB713f997bcaD5595f089C19E6B72"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

x: uint256
y: uint256

@internal
def set(b: uint256):
    self.y = b

@deploy
def __init__(a: uint256, b: uint256):
    self.x = a
    self.set(b)

@external
@view
def get() -> uint256:
    return self.y

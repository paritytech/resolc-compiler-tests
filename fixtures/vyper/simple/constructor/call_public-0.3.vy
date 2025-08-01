#! {
#!   "modes": [
#!     "V 0.3.9",
#!     "V 0.3.10"
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
#!           "caller": "0x169F1FFE37708FD106fd263c86CB8F84dD07D455"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x169F1FFE37708FD106fd263c86CB8F84dD07D455"
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

@external
def __init__(a: uint256, b: uint256):
    self.x = a
    self.set(b)

@external
@view
def get() -> uint256:
    return self.y

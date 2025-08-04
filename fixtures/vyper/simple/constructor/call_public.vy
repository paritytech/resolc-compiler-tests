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
#!           "caller": "0x4F75D96f38a8d52343B132eB0792544c49C95603"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x4F75D96f38a8d52343B132eB0792544c49C95603"
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

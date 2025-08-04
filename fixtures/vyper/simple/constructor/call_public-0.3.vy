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
#!           "caller": "0xD6C81Bbf3683A6bcA46d8A1cd0Db671e24c0318f"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0xD6C81Bbf3683A6bcA46d8A1cd0Db671e24c0318f"
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

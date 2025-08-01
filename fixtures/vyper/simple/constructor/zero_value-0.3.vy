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
#!             "32"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0xbd6d78EF11f8fE626F44eDc9eb828c11e2D66b5B"
#!         },
#!         {
#!           "method": "_get",
#!           "calldata": [],
#!           "caller": "0xbd6d78EF11f8fE626F44eDc9eb828c11e2D66b5B"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-296/bug-with-constructor

a: public(uint256)

# if remove constructor or param - it works
@external
def __init__(b: uint256):
    self.a = 0

@external
@view
def _get() -> uint256:
    return self.a

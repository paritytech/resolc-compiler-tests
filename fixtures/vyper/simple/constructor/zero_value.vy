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
#!             "32"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x511D5454BceFDB684e7Ebbbd74f602adb265403C"
#!         },
#!         {
#!           "method": "_get",
#!           "calldata": [],
#!           "caller": "0x511D5454BceFDB684e7Ebbbd74f602adb265403C"
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
@deploy
def __init__(b: uint256):
    self.a = 0

@external
@view
def _get() -> uint256:
    return self.a

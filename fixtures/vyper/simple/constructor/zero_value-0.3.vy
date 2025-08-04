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
#!           "caller": "0x9dFE55027BF2769495dfA8c671ef75618Dd87674"
#!         },
#!         {
#!           "method": "_get",
#!           "calldata": [],
#!           "caller": "0x9dFE55027BF2769495dfA8c671ef75618Dd87674"
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

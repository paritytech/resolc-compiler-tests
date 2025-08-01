#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "success",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "7",
#!             "6",
#!             "0"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x4874ca2fE80e3418F63bBc8b6D9B9FAF33F19D7D"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x4874ca2fE80e3418F63bBc8b6D9B9FAF33F19D7D"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "failure",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "7",
#!             "6",
#!             "1"
#!           ],
#!           "caller": "0x1bC05253d10156FA125E2611bf3fbE5c1a82C152"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

c: uint256

@external
def __init__(a: uint256, b: uint256, shouldRevert: bool):
    self.c = a * b
    assert not shouldRevert

@external
@view
def get() -> uint256:
    return self.c

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
#!             "7",
#!             "6",
#!             "0"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x73930D399be47392029D773f93c045a5Aa7e7082"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x73930D399be47392029D773f93c045a5Aa7e7082"
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
#!           "caller": "0x03946090Ba6599319F1f6B3ffd1dEBEC1121F389"
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

@deploy
def __init__(a: uint256, b: uint256, shouldRevert: bool):
    self.c = a * b
    assert not shouldRevert

@external
@view
def get() -> uint256:
    return self.c

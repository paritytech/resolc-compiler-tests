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
#!           "caller": "0xfff10131fa0a74cAc8A01fa1CC2227B9C68617B3"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0xfff10131fa0a74cAc8A01fa1CC2227B9C68617B3"
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
#!           "caller": "0x346c5fE57687456bDb683D372e1BbD55a2b8407F"
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

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
#!           "caller": "0xa941115c8ce5C731cf594032a224ACfdCfcd3531"
#!         },
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0xa941115c8ce5C731cf594032a224ACfdCfcd3531"
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
#!           "caller": "0xdE5161B26404540468E8fCB48f7a70868D65278B"
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

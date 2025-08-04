#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x5389aed788F01F16675B0c7b78EE6BBA81A1F7a8"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "64"
#!           ],
#!           "caller": "0x135e20D7B0eD0Fb5acEa2c0058F971BE0b0Cd0Ed"
#!         }
#!       ],
#!       "expected": [
#!         "64"
#!       ]
#!     },
#!     {
#!       "name": "third",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "65535"
#!           ],
#!           "caller": "0xEE1D9bF10d6BEF9F118040242F5B767A3145365d"
#!         }
#!       ],
#!       "expected": [
#!         "65535"
#!       ]
#!     }
#!   ]
#! }

struct Data:
    a: uint256

@internal
@pure
def _new(a: uint256) -> Data:
    return Data(a=a)

@external
def main(witness: uint256) -> uint256:
    return self._new(witness).a


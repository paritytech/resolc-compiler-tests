#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xb4F2ba077a9A04CedCF4005683b6C017889c9750"
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
#!           "caller": "0x1065FAd9E6D2dBcac353d641e2A946179a14b790"
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
#!           "caller": "0x0FB1CBaedF377F67FBFb84CBff4863D271848cF5"
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
    return Data({a: a})

@external
def main(witness: uint256) -> uint256:
    return self._new(witness).a


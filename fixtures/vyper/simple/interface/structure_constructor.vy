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
#!           "caller": "0x24159844af462EEA9F9B7b91Ffd4d9391C2393F9"
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
#!           "caller": "0x472CC821bF199e3aE412479Aa66c75098209E46F"
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
#!           "caller": "0xfF3dD1EbED5e9607AB60C088f4b52ae0ed2a431a"
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


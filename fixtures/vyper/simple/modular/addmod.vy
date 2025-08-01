#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "by_zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "25",
#!             "0"
#!           ],
#!           "caller": "0xCFb85FC70059b2E0fD0FFB43a7dC899554C576C0"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42",
#!             "25",
#!             "24"
#!           ],
#!           "caller": "0xF38e5B1cbc43b9df10aB182F314561a97aaE4696"
#!         }
#!       ],
#!       "expected": [
#!         "19"
#!       ]
#!     },
#!     {
#!       "name": "overflow",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
#!             "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe",
#!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
#!           ],
#!           "caller": "0x4f1cc945214C7C73201cbE0969E41AF74caE8f5d"
#!         }
#!       ],
#!       "expected": [
#!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(x: uint256, y: uint256, m: uint256) -> uint256:
    return uint256_addmod(x, y, m)
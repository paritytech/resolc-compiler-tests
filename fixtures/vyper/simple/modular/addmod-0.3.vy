#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x6b437b0AB2C7D6aDeFabBF657D2B6FF46F077dc9"
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
#!           "caller": "0x0C6D0D6239C92A2135AabcB9219475676d6dDB5f"
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
#!           "caller": "0x6be4Cbd7DbD907cdFf580fA07f5d1a393b313677"
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
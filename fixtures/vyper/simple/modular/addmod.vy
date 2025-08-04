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
#!           "caller": "0xF8C90223c4bD1DbD8876E165436CE80596413276"
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
#!           "caller": "0x2383CDbFFd83Bd22c6037C9038EA3C677ea5F6Ad"
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
#!           "caller": "0x9b11178047B2b5bBCca7e91d5D96D6A26C1D8b68"
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
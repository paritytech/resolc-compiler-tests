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
#!           "caller": "0x54D9F3d9829D6D1356D6522CFF1dEC6fDbe40B14"
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
#!           "caller": "0xAFfC4a19BBA234F64F4AB91BCf78485c8379Ce49"
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
#!           "caller": "0xCc1106a99eE3ab3Af3349198D549E806b6CA463C"
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
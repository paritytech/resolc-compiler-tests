#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "first",
#!           "calldata": [],
#!           "caller": "0xF8cF515adC6693b78E347eE2Cdc5E4aBFB78C683"
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
#!           "method": "second",
#!           "calldata": [],
#!           "caller": "0x03EB9D3da5899F438CB3F86b152e7A4f35855b1D"
#!         }
#!       ],
#!       "expected": [
#!         "99"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def first() -> uint8:
    result: uint8 = 42
    return result

@external
@pure
def second() -> uint256:
    result: uint256 = 99
    return result

#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "first",
#!           "calldata": [],
#!           "caller": "0x7d3eeF3b7cEF975Aab3EDE75eaDC4d09558617F6"
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
#!           "caller": "0x7d33130891a652eEDd67755E7b7A9882F7D85df7"
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

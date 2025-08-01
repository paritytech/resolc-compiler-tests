#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "#fallback",
#!           "calldata": [],
#!           "caller": "0xe52Ced9D94b54f9b07987547867104A11a7D78b2"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

@external
def __default__() -> uint256:
    return 42

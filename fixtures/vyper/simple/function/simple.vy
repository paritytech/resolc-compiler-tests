#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "_default",
#!       "inputs": [
#!         {
#!           "method": "_default",
#!           "calldata": [
#!             "512"
#!           ],
#!           "caller": "0xa7d8fb8170C90CE4ed4DB1467358dA3b98dC5E7d"
#!         }
#!       ],
#!       "expected": [
#!         "1024"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def _default(_value: uint256) -> uint256:
    return _value * 2

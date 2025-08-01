#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x75eA9cEda9E0Dd7c7f455BBf271198808E282C2e"
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

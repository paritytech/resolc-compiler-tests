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
#!           "caller": "0x902Ffe2B4a5a4a58DDEea13Db790DB98F3E5d5ea"
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

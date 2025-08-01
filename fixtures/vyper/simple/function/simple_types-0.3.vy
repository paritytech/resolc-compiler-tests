#! {
#!   "modes": [
#!     "V 0.3.9",
#!     "V 0.3.10"
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
#!           "caller": "0xc6aa9CfDCc5D8c1bF9e7CD6BAE23A96D3F618F30"
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
def _default(_value: uint248) -> uint248:
    return _value * 2

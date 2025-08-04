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
#!           "caller": "0x963a62A7FB5778AFa7a6CB26754C1f4D3961c2f6"
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

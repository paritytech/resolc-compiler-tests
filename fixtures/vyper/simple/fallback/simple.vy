#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "#fallback",
#!           "calldata": [],
#!           "caller": "0xBfc663922aA7806eD756e8af78B30E6D36b0b07b"
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

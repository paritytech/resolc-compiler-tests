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
#!           "caller": "0x279244368c088a7A0519C059AFf77C2B4bA24B96"
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

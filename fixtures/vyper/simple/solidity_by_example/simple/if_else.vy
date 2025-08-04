#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "foo_1",
#!       "inputs": [
#!         {
#!           "method": "foo",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xD3eAD7A0BcB33230f8537b6bCc8Ee783A1d83D35"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "foo_15",
#!       "inputs": [
#!         {
#!           "method": "foo",
#!           "calldata": [
#!             "15"
#!           ],
#!           "caller": "0xEc30F43C786e2a52735a3E74b29974cB506fb2A3"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "foo_123132213123",
#!       "inputs": [
#!         {
#!           "method": "foo",
#!           "calldata": [
#!             "123132213123"
#!           ],
#!           "caller": "0x1412554916061726a4fA489a7EcB336c99A43841"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def foo(x: uint256) -> uint256:
    if x < 10:
        return 0
    elif x < 20:
        return 1
    else:
        return 2

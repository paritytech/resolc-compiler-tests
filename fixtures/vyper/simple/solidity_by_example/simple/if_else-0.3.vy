#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x03C1912a91c47985e5Fa18e906Ed1Ff8afE01a6B"
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
#!           "caller": "0x7C2639951ab099a4ABffAFd31f5b205cd92E9f7e"
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
#!           "caller": "0xf627E8c482534F73A4a8d842c5BAe3a6899EaBeF"
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

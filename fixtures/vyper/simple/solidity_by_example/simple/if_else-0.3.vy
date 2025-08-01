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
#!           "caller": "0x3964E8faeD85049aa91AE9C1248cE6DA5F09fC0C"
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
#!           "caller": "0x7c6aF8B3821FD8De7d54d3a40f2BC4ac3Ca447bD"
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
#!           "caller": "0x9b45A6084947BCCbbeF48Cf47CD1496DD9feCd43"
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

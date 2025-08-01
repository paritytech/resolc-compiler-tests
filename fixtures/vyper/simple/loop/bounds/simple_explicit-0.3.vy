#! {
#!   "modes": [
#!     "V 0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "foo",
#!           "calldata": [
#!             "10"
#!           ],
#!           "caller": "0x8A9dE1842C36433187A8916FBbFB58EC96F9135C"
#!         }
#!       ],
#!       "expected": [
#!         "15"
#!       ]
#!     }
#!   ]
#! }

@external
def foo(end: uint256) -> uint256:
    x: uint256 = 0
    for i in range(end, bound=6):
        x += i
    return x
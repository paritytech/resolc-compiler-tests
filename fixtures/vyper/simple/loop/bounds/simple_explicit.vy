#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0xBbd6d49Eb2a3fe19a4017370564814810f275665"
#!         }
#!       ],
#!       "expected": [
#!         "15"
#!       ]
#!     }
#!   ]
#! }

@external
def foo(stop: uint256) -> uint256:
    x: uint256 = 0
    for i: uint256 in range(stop, bound=6):
        x += i
    return x
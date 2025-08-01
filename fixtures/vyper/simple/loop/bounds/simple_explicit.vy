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
#!           "caller": "0x43AF294b5c8eB16b236Dc9d301aCf8b87745913b"
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
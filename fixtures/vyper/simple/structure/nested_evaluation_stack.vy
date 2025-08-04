#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "3"
#!           ],
#!           "caller": "0xa8dd9580d378D583d47345c6942e4440676A927C"
#!         }
#!       ],
#!       "expected": [
#!         "15"
#!       ]
#!     }
#!   ]
#! }

struct Inner:
    value: uint8

struct Test:
    inner: Inner

@external
@pure
def main(witness: uint8) -> uint8:
    return Test(inner=Inner(value=witness * 5)).inner.value

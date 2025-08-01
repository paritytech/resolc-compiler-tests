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
#!           "caller": "0x3c59295374f2387a0aC83cC91C1562976d54e66D"
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
    data: Test = Test(inner=Inner(value=witness * 5))
    return data.inner.value

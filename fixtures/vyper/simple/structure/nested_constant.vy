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
#!           "caller": "0x040c07226d8053ae099ba0d544f37fe730E1f9Cd"
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

struct Data:
    inner: Inner

DATA: constant(Data) = Data(inner=Inner(value=5))

@external
@pure
def main(witness: uint8) -> uint8:
    return DATA.inner.value * witness

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
#!           "caller": "0x77df55870B22f1eE11b72222Db138d46038475aC"
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

#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xC0Ed93D798516A796AE7E7Af6dF3c2Efb481A8b7"
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

DATA: constant(Data) = Data({inner: Inner({value: 5})})

@external
@pure
def main(witness: uint8) -> uint8:
    return DATA.inner.value * witness

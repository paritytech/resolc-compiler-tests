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
#!           "caller": "0x29A3b3041D504e8b99d6DDf87796180A2784424b"
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

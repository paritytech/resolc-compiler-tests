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
#!           "caller": "0x998974EAD4510CdC669939A5B2ED85623Db3F57c"
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
    return Test({inner: Inner({value: witness * 5})}).inner.value

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
#!             "168",
#!             "4"
#!           ],
#!           "caller": "0x8E40ED4373acD1ca3399d7f7192E977AE430D295"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

struct Inner:
    value: uint8

struct Data:
    inner: Inner

@external
@pure
def main(data: Data, divider: uint8) -> Data:
    _data: Data = data
    _data.inner.value /= divider
    return _data

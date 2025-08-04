#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-3534534645645544567"
#!           ],
#!           "caller": "0xA987DADe516Ae6f7F0634946ff9BE4EF6578e549"
#!         }
#!       ],
#!       "expected": [
#!         "-35345346456456"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "564738934349834"
#!           ],
#!           "caller": "0x53e55e9DabC1fE5dd23d0b4E92CB6F4f1Da9Ed93"
#!         }
#!       ],
#!       "expected": [
#!         "5647389343"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int256) -> int256:
    return floor(convert(a, decimal)/100000.0)

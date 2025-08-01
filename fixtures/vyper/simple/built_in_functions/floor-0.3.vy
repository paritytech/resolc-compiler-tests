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
#!           "caller": "0x59f543A09E49dB7CCe33B7b883Aaff4de41cC2BD"
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
#!           "caller": "0x9B762a3965A4C86771C1da01aFddB5d7670B8AA9"
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

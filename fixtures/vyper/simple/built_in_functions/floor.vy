#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x5276cd38D5ab9a3044936acF15e969D3f97ebfd9"
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
#!           "caller": "0x62A62d3e8b08fB73aF2d9F5e169225ac9AB36726"
#!         }
#!       ],
#!       "expected": [
#!         "5647389343"
#!       ]
#!     }
#!   ]
#! }

# pragma enable-decimals

@external
@pure
def main(a: int256) -> int256:
    return floor(convert(a, decimal)/100000.0)

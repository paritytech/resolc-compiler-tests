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
#!           "caller": "0x1C1314BB02E1b97beb01e46E0Bbc6203eeAbeF8c"
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
#!           "caller": "0xDEbe35C12A6b059F19900E9bA79a9875a86B8252"
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

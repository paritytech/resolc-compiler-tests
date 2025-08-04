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
#!             "-3534534645645544566"
#!           ],
#!           "caller": "0x6A301664D8e24b1E4802c28a122DC91Ee2FF9Fe2"
#!         }
#!       ],
#!       "expected": [
#!         "-35345346456455"
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
#!           "caller": "0x2782802B180cdF8c46a7C11Ae65e979CcFdF791B"
#!         }
#!       ],
#!       "expected": [
#!         "5647389344"
#!       ]
#!     }
#!   ]
#! }

# pragma enable-decimals
@external
@pure
def main(a: int256) -> int256:
    return ceil(convert(a, decimal)/100000.0)

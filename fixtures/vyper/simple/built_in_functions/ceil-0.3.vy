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
#!             "-3534534645645544566"
#!           ],
#!           "caller": "0x8606d453c52e31d297a87E5eB6f42Cbf06EcA2B3"
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
#!           "caller": "0x2a0F590DD06313dF3F4c141cd1be73E71BEdee2D"
#!         }
#!       ],
#!       "expected": [
#!         "5647389344"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: int256) -> int256:
    return ceil(convert(a, decimal)/100000.0)

#! {
#!   "modes": [
#!     "V >=0.4.2"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "2"
#!           ],
#!           "caller": "0x2c983389d937C4405129A679D73708aB5fA0fF1c"
#!         }
#!       ],
#!       "expected": [
#!         "141421"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "56473894349834"
#!           ],
#!           "caller": "0xf7C7faB8fd3BEde4C56dB65c7C27CaAe44821285"
#!         }
#!       ],
#!       "expected": [
#!         "751491146653"
#!       ]
#!     }
#!   ]
#! }

# pragma enable-decimals
import math

@external
@pure
def main(a: int256) -> int256:
    return floor(math.sqrt(convert(a, decimal))*100000.0)

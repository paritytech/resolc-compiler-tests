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
#!           "caller": "0xF5b94f7d51546a90f7ff30f2a1F04A5B4cDeecc0"
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
#!           "caller": "0xeBa1fd62133689AF798ED9093ef2aeeE4173572a"
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

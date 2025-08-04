#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "57896044618658097711785492504343953926634992332820282019728792003956564819967"
#!           ],
#!           "caller": "0x5a663a09b0C21D61F550D361a6aB4EeF88D72A8D"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

@external
@pure
def main(witness: int256) -> int256:
    return witness + 1

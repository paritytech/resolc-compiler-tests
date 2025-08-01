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
#!             "-57896044618658097711785492504343953926634992332820282019728792003956564819968"
#!           ],
#!           "caller": "0xcd855f59AfafA64d90838fFb5C8F074Fd9a19343"
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
    return witness - 1

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
#!           "caller": "0x12c5F7b6a7c9f7b011215Dfb63539e42494E80e5"
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

#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "57896044618658097711785492504343953926634992332820282019728792003956564819968"
#!           ],
#!           "caller": "0xb69b688CA6910a6c72D451603E2e709C251D175B"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256) -> uint256:
    return shift(a, -255)

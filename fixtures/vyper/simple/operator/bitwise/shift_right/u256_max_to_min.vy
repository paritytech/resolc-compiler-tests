#! {
#!   "modes": [
#!     "V >=0.4.0"
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
#!           "caller": "0x8c3291Ba3D90ac4adDEdC93920A97a0540f45FEE"
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
    return a >> 255

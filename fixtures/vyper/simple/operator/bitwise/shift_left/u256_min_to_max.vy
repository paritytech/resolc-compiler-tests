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
#!             "1"
#!           ],
#!           "caller": "0x42a461E5217632fBa50D65cdd5eC52033FB0c71c"
#!         }
#!       ],
#!       "expected": [
#!         "57896044618658097711785492504343953926634992332820282019728792003956564819968"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256) -> uint256:
    return a << 255

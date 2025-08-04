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
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6"
#!           ],
#!           "caller": "0xfaA2226a9917147FEEE57787ff8e28c95f365a9E"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: uint256, b: uint256, c: uint256, d: uint256, e: uint256, f: uint256) -> uint256:
    return d

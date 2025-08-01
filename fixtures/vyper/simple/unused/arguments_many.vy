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
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6"
#!           ],
#!           "caller": "0xC8Ff58018E44EB93483e2932C96d109C36d4f94b"
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

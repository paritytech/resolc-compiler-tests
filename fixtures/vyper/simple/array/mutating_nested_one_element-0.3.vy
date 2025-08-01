#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "test",
#!       "inputs": [
#!         {
#!           "method": "test",
#!           "calldata": [],
#!           "caller": "0x99829631874145690405456107ac1FcBb25f4FA1"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-204/2-dimensional-array-bug

@external
@pure
def test() -> uint256:
    a: uint256[1][1] = [[0]]
    a[0][0] = a[0][0]
    return 1

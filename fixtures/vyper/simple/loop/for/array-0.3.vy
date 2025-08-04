#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "entry",
#!       "inputs": [
#!         {
#!           "method": "entry",
#!           "calldata": [],
#!           "caller": "0xDf984617eA976C507B99bC9C58B65C5a5A2541D2"
#!         }
#!       ],
#!       "expected": [
#!         "15"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def entry() -> uint256:
    sum: uint256 = 0
    arr: uint256[5] = [1, 2, 3, 4, 5]
    for i in arr:
        sum += i
    return sum

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
#!           "caller": "0x1eEEBbE58aBA0DdEd7CeF791DdaC50477Ed5781E"
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

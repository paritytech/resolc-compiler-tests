#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "entry",
#!       "inputs": [
#!         {
#!           "method": "entry",
#!           "calldata": [],
#!           "caller": "0x8B672001d48B9eEdf21968431e6CeF84E173851f"
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
    for i: uint256 in arr:
        sum += i
    return sum

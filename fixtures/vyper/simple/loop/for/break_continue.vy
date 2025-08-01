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
#!           "caller": "0x55907d22901e44890d3743C6B6c2c99576E5fAf6"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def entry() -> uint256:
    cnt: uint256 = 0
    for i: uint256 in range(0, 12):
        if i % 2 == 0:
            continue
        cnt += 1
        if i == 9:
            break
    return cnt

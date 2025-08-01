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
#!           "caller": "0x035Ac9dAB910eE6Ab33D1d6E5d1B3744EeeB6249"
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
    for i in range(0, 12):
        if i % 2 == 0:
            continue
        cnt += 1
        if i == 9:
            break
    return cnt

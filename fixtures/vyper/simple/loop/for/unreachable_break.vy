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
#!           "caller": "0x7a1814a1aa71DA5F9608b4c555521F5995BE63CB"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def entry() -> uint256:
    end: bool = True

    sum: uint256 = 0
    for i: uint256 in range(1, 3):
        sum += i

        if not end:
            break

    return sum

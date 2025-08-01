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
#!           "caller": "0x0E58A56431897e71e00D3AeEc8e21bc7F647688D"
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

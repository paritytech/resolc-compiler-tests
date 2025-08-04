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
#!             "31"
#!           ],
#!           "caller": "0xd64686dF8d6A7aA5Af79E7449b372B3a535829A6"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-205/back-end-optimization-bug-minimized-complex-infinite-loop

@external
@pure
def main(param: uint8) -> uint256:
    cnt: uint256 = 0

    for j in [1, 2]:
        for h in range(0, 1):
            if param == 4:
                return 40
            cnt += 1

    return cnt

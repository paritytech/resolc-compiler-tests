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
#!             "31"
#!           ],
#!           "caller": "0x08ff6633775CB99bb3A5468b09d0e4bc84367B0d"
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

    for j: uint8 in [1, 2]:
        for h: uint8 in range(0, 1):
            if param == 4:
                return 40
            cnt += 1

    return cnt

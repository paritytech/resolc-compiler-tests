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
#!           "caller": "0x4bAF13FD8838d6EBDBDaa17a53D46c8Bf9D184Fd"
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

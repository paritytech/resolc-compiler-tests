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
#!           "caller": "0xDa6eA09A998243de3d75D3D22c9D42209c803755"
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

#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "f1",
#!       "inputs": [
#!         {
#!           "method": "f1",
#!           "calldata": [],
#!           "caller": "0x37d2362dF2a469305c63317315D4415B8bFb7Fdd"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-197/stack-corrupted-error

@external
@pure
def f1() -> uint256:
    return 1

@external
@pure
def f2(a1: uint256, a2: uint256, a3: uint256, a4: uint256, a5: uint256, a6: uint256) -> (uint256, uint256):
    return (1, 1)

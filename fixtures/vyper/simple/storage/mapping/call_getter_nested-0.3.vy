#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "g",
#!           "calldata": [],
#!           "caller": "0x73715f4cB8C2Ed7187362e4eb7d5974f6BD3b582"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-611/nested-external-calls-issue

interface Self:
    def h() -> uint256: nonpayable
    def f() -> uint256: nonpayable

@external
def h() -> uint256:
    return 1

@external
def f() -> uint256:
    return Self(self).h()

@external
def g() -> uint256:
    return Self(self).f()

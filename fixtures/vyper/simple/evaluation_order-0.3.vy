#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "10",
#!             "20"
#!           ],
#!           "caller": "0x58F9d69d5D603403333D3aD8D1450C889D186982"
#!         }
#!       ],
#!       "expected": [
#!         "32"
#!       ]
#!     }
#!   ]
#! }

a: uint256

@internal
def lhs(x: uint256) -> uint256:
    self.a = 1
    return x

@internal
def rhs(y: uint256) -> uint256:
    self.a = 2
    return y

@internal
def f(x: uint256, y: uint256) -> uint256:
    return x + y

@external
def main(x: uint256, y: uint256) -> uint256:
    return self.f(self.lhs(x), self.rhs(y)) + self.a

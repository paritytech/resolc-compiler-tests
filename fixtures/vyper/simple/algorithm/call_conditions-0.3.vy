#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "first",
#!           "calldata": [],
#!           "caller": "0x7d38B0A48413fD9487094CD5f47Ba8991866B4e8"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "second",
#!           "calldata": [],
#!           "caller": "0x5123C26e0a0CFE7a8F1952028d00799C0dCc3654"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

@internal
@pure
def main(a: uint256, b: uint256, c: uint256) -> uint256:
    if c > 42:
        return a + b
    if c == 42:
        return a - b
    return a * b

@external
def first() -> uint256:
    return self.main(84, 2, 43) + self.main(23, 23, 42) - self.main(22, 2, 3)

@external
def second() -> uint256:
    return self.main(15, 10, 43) + self.main(30, 10, 42) - self.main(3, 1, 3)

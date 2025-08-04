#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "first",
#!       "inputs": [
#!         {
#!           "method": "first",
#!           "calldata": [],
#!           "caller": "0x4972fC743Ac14cfFaf703BEcE5356E9b47864f81"
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
#!           "caller": "0x468d063107c989775C8c6012fe3552B7FB3ea8fe"
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

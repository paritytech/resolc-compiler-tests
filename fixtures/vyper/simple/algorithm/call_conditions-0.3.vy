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
#!           "caller": "0xDD72279E8e18D9E4064075E8CCf78dD3F4481F41"
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
#!           "caller": "0xFC31e500da188dB46c2Cd50d8e1e97E361F9be2a"
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

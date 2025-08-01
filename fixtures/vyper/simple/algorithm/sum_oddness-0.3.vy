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
#!           "caller": "0x5EF3dB9ebD1FBcc9cB6950b9fce80CA41c405cAb"
#!         }
#!       ],
#!       "expected": [
#!         "5050"
#!       ]
#!     },
#!     {
#!       "name": "second",
#!       "inputs": [
#!         {
#!           "method": "second",
#!           "calldata": [],
#!           "caller": "0xE4aD12d6D0FC98b99c762a2052318e223403b069"
#!         }
#!       ],
#!       "expected": [
#!         "1275"
#!       ]
#!     }
#!   ]
#! }

@internal
@pure
def main(a: uint256, is_odd: bool) -> uint256:
    result: uint256 = 0
    for i in range(1, 1000000000):
        if not i <= a:
            break
        if is_odd:
            if i % 2 != 0:
                result += i
        else:
            if i % 2 == 0:
                result += i
    return result

@external
def first() -> uint256:
    return self.main(100, False) + self.main(100, True)

@external
def second() -> uint256:
    return self.main(50, True) + self.main(50, False)

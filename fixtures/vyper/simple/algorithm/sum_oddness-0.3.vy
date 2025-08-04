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
#!           "caller": "0x555a374a962ACdF8ACb977318eBCbc6f4c242b43"
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
#!           "caller": "0x49D5cA655abdAe2f6ae8d379df18D13668e4E7F6"
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

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
#!           "caller": "0x1ff1e0CAb1a5E2C8F257BDCc2aA452Fb3c7BB1a4"
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
#!           "caller": "0xA94AEc8E404115c332cCFe39C7EE45200b057867"
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
    for i: uint256 in range(1, 1000000000):
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

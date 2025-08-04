#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0xf8c61f118196E862d535D3be9Fc6b4cB08C5dFFd"
#!         }
#!       ],
#!       "expected": [
#!         "2545"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> uint16:
    sum: uint16 = 0
    for i: uint16 in range(250, 260):
        sum += i
    return sum

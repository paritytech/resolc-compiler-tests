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
#!           "caller": "0x0B9A812f6208A8524608e56561E1e08829e405f5"
#!         }
#!       ],
#!       "expected": [
#!         "-128"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i: int16 in range(-128, 128):
        sum += i
    return sum

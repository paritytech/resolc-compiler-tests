#! {
#!   "modes": [
#!     "V 0.3.9",
#!     "V 0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x5274F4356490568b7487A86bf16f7E330A7507F6"
#!         }
#!       ],
#!       "expected": [
#!         "-200"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> int16:
    sum: int16 = 0
    for i in range(-200, 200):
        sum += i
    return sum

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
#!           "caller": "0x2B8eaACfA17cDCEEE54d6D72BE9CdEfCaf2877F5"
#!         }
#!       ],
#!       "expected": [
#!         "10"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main() -> uint64:
    sum: uint64 = 0
    for i in range(18446744073709551605, 18446744073709551615):
        sum += 1
    return sum

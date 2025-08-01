#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "conditionTrue",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x9a580714e11E05929040fAe7A380a9A1E9c2b998"
#!         }
#!       ],
#!       "expected": [
#!         "10"
#!       ]
#!     },
#!     {
#!       "name": "conditionFalse",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x7142E86253c4524d46d0e5EDB3296c900882cdE4"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(condition: bool) -> uint8:
    result: uint8 = 5

    if condition:
        result += 5

    return result

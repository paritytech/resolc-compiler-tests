#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "f",
#!       "inputs": [
#!         {
#!           "method": "f",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x1E5c337d734ce371dC9325B31627AC83eB7F0A4c"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-583/book-cypher-minimization-issue-with-comparison-uint8-array-element

KEY: uint8[2] # if replace the first or second value with 0, the test will work

@external
def __init__():
    self.KEY = [1, 1]

@external
@view
def f(data: uint8) -> bool:
    return self.KEY[1] == data

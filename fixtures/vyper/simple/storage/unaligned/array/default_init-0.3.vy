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
#!           "caller": "0x715045221f3E0f87CCa6316B7178818431327442"
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

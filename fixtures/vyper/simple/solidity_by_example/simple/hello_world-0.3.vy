#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "get",
#!       "inputs": [
#!         {
#!           "method": "greet",
#!           "calldata": [],
#!           "caller": "0x4A6cAe65aF7f8C585b7673E6C6BBb2C11b1855C0"
#!         }
#!       ],
#!       "expected": [
#!         "0x20",
#!         "12",
#!         "0x48656c6c6f20576f726c64210000000000000000000000000000000000000000"
#!       ]
#!     }
#!   ]
#! }

greet: public(String[12])

@external
def __init__():
    self.greet = "Hello World!"

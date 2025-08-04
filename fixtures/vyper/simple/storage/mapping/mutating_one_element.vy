#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "f",
#!       "inputs": [
#!         {
#!           "method": "f",
#!           "calldata": [],
#!           "caller": "0x80AAB55778D627f78e436257E3b27E9111DAc6CE"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-220/mapping-test-failure

m1: HashMap[uint8, uint8]

@external
def f() -> uint8:
    self.m1[1] = 42
    return self.m1[1]

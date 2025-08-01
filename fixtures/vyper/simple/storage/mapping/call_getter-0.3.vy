#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x9814f28245EA9a852a6EBd40f2956DAC1772be97"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-610/mapping-getter-failure

interface Self:
    def table(arg1: uint8) -> uint8: nonpayable

table: public(HashMap[uint8, uint8])

@external
def get() -> uint8:
    return Self(self).table(0)

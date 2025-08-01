#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "get",
#!           "calldata": [],
#!           "caller": "0x4Ee0C760fF1B3e07D659022A7e5Dd1579e5be48C"
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
    return extcall Self(self).table(0)

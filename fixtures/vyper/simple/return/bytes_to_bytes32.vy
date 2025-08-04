#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "test",
#!       "inputs": [
#!         {
#!           "method": "verify",
#!           "calldata": [
#!             "0x20",
#!             "32",
#!             "0"
#!           ],
#!           "caller": "0xC98a1ad41AAF595C224Db73074B683d4F56d1f12"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-450/vyper-extract32-exception-without-optimization

@external
def verify(sig: Bytes[32]) -> bytes32:
    return extract32(sig, 0)

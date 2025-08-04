#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "testRevertOk",
#!       "inputs": [
#!         {
#!           "method": "testRevert",
#!           "calldata": [
#!             "1131"
#!           ],
#!           "caller": "0xEf188Ad330bFAB456dE69f12692cA9c1cc8B4e0D"
#!         }
#!       ],
#!       "expected": []
#!     },
#!     {
#!       "name": "testRevertError",
#!       "inputs": [
#!         {
#!           "method": "testRevert",
#!           "calldata": [
#!             "10"
#!           ],
#!           "caller": "0x863d555AB3028EB9E277d6DECB82761DF8C9e792"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [
#!           "0x08c379a000000000000000000000000000000000000000000000000000000000",
#!           "0x0000002000000000000000000000000000000000000000000000000000000000",
#!           "0x0000001d496e707574206d7573742062652067726561746572207468616e2031",
#!           "0x3000000000000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "testAssert",
#!       "inputs": [
#!         {
#!           "method": "testAssert",
#!           "calldata": [
#!             "10"
#!           ],
#!           "caller": "0x18Ec8C1900970051Fd7107bd59Cd689C068D982E"
#!         }
#!       ],
#!       "expected": []
#!     }
#!   ]
#! }

@external
@pure
def testRevert(_i: uint256):
    # Revert is useful when the condition to check is complex.
    if _i <= 10:
        raise("Input must be greater than 10")

num: public(uint256)

@external
@view
def testAssert():
    # Assert should only be used to test for internal errors,
    # and to check invariants.

    # Here we assert that num is always equal to 0
    # since it is impossible to update the value of num
    assert self.num == 0

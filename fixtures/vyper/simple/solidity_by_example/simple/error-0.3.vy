#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0x035c8D24f69D2F6DF9E10bc3f50362D2072De65c"
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
#!           "caller": "0xF327B351B33E3b658EA22548bb3B088a8e67B655"
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
#!           "caller": "0x53B8dBd95f7D97B2896C26C6924180DaBe7cfb9F"
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

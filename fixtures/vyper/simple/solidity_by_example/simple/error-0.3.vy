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
#!           "caller": "0xCd0FcBF1c317A8c12CC5E651558097aBf309d3DF"
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
#!           "caller": "0x0DEBC58Ba71177a0436621DAD9Cc85981831794C"
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
#!           "caller": "0x54706F01f220Da6c3b9D1459f27f2F7e614F6f94"
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

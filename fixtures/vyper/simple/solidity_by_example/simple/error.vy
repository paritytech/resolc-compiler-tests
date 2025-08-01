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
#!           "caller": "0x0957c90559D8165300358E0210f83dC355694D5D"
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
#!           "caller": "0x3a61128f13f85A500c79b61fAe864D64A3380840"
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
#!           "caller": "0x2FF79C5894700080624ed3185b8316527Cc0727b"
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

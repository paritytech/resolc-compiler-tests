#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "entry",
#!           "calldata": [],
#!           "caller": "0x62159cE46A1D2A753bc27fcb93a671025B80dcbe"
#!         }
#!       ],
#!       "expected": []
#!     }
#!   ]
#! }

# Report https://linear.app/matterlabs/issue/CPR-581/require-in-external-call-failure-for-b1-b3

interface Self:
    def f(): nonpayable

@external
def f():
    assert True

@external
@nonpayable
def entry():
    extcall Self(self).f()

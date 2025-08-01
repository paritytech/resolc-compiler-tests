#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "test",
#!           "calldata": [],
#!           "caller": "0x47A785c05e3A8Cd4731C817A3760a1b0aFEa4cFe"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "events": [
#!           {
#!             "topics": [
#!               "0xb0f98cf6a3ac72f8ce21b36c00f0c5bc98b2acbda7853638c61ce3199b220011",
#!               "9876543211",
#!               "9876543212",
#!               "9876543213"
#!             ],
#!             "values": [
#!               "1234567890"
#!             ]
#!           }
#!         ]
#!       }
#!     }
#!   ]
#! }

event MyEvent:
    _: indexed(uint256)
    __: indexed(uint256)
    ___: indexed(uint256)
    ____: uint256

@external
def test():
    log MyEvent(9876543211, 9876543212, 9876543213, 1234567890)

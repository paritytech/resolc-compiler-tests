#! {
#!   "modes": [
#!     "V =0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "test",
#!           "calldata": [],
#!           "caller": "0xF24778Ec71E17C88c5A33A28D35c96ab67f32a01"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "events": [
#!           {
#!             "topics": [
#!               "0xa3588e4a25abd7c428e131dd4e5f4bfed90b232d197614e2a97f80807b8bdc96",
#!               "9876543211",
#!               "9876543212",
#!               "9876543213"
#!             ],
#!             "values": [
#!               "1234567890",
#!               "1234567891"
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
    _____: uint256

@external
def test():
    log MyEvent(9876543211, 9876543212, 9876543213, 1234567890, 1234567891)

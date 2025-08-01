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
#!           "caller": "0xAE37cd1a60cA3F8e7c7C47a756B81Fa5A0D58D1D"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "events": [
#!           {
#!             "topics": [
#!               "0x06208c2a7c81ce0338f4e7c431f49476c450bad6ce52ef2b4e186db4a1fbcaf4",
#!               "9876543211"
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
    __: uint256

@external
def test():
    log MyEvent(9876543211, 1234567890)

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
#!           "caller": "0xD86730289E19565dB777f230B5fA704EfBBC59a8"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "events": [
#!           {
#!             "topics": [
#!               "0x06208c2a7c81ce0338f4e7c431f49476c450bad6ce52ef2b4e186db4a1fbcaf4",
#!               "9876543211",
#!               "9876543212"
#!             ],
#!             "values": []
#!           }
#!         ]
#!       }
#!     }
#!   ]
#! }

event MyEvent:
    _: indexed(uint256)
    __: indexed(uint256)

@external
def test():
    log MyEvent(9876543211, 9876543212)

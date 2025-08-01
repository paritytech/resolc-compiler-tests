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
#!           "caller": "0x1E9ffCA7E0091182093D432B3FC1db34339a18d2"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "events": [
#!           {
#!             "topics": [
#!               "0x06208c2a7c81ce0338f4e7c431f49476c450bad6ce52ef2b4e186db4a1fbcaf4"
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
    _: uint256
    __: uint256

@external
def test():
    log MyEvent(1234567890, 1234567891)

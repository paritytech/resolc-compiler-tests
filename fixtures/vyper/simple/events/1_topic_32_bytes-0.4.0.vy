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
#!           "caller": "0x5784156F5fd5B445167259434DB576367992dcd6"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "events": [
#!           {
#!             "topics": [
#!               "0x6c2b4666ba8da5a95717621d879a77de725f3d816709b9cbe9f059b8f875e284"
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
    _: uint256

@external
def test():
    log MyEvent(1234567890)

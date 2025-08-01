#! {
#!   "modes": [
#!     "V >=0.4.1"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "test",
#!           "calldata": [],
#!           "caller": "0x4335799D6Cba3bbfc8940B43789485E3ca553EB6"
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
    log MyEvent(_=1234567890)

#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "default",
#!       "inputs": [
#!         {
#!           "method": "test",
#!           "calldata": [],
#!           "caller": "0x4B2B12C902bf98fC4e2B021E288C04F621c3D48F"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "events": [
#!           {
#!             "topics": [
#!               "0x4dbfb68b43dddfa12b51ebe99ab8fded620f9a0ac23142879a4f192a1b7952d2"
#!             ],
#!             "values": []
#!           }
#!         ]
#!       }
#!     }
#!   ]
#! }

event MyEvent:
    pass
    
@external
def test():
    log MyEvent()

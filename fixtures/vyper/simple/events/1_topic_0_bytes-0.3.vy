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
#!           "caller": "0x375b0c0BC91bEf71776CD764CD3107553E235Fdc"
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

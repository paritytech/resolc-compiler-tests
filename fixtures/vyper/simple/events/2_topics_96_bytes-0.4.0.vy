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
#!           "caller": "0xd2a263F7a239465F7B418DA3825a43Ac7ED9674D"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "events": [
#!           {
#!             "topics": [
#!               "0xb0f98cf6a3ac72f8ce21b36c00f0c5bc98b2acbda7853638c61ce3199b220011",
#!               "9876543211"
#!             ],
#!             "values": [
#!               "1234567890",
#!               "1234567891",
#!               "1234567892"
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
    ___: uint256
    ____: uint256

@external
def test():
    log MyEvent(9876543211, 1234567890, 1234567891, 1234567892)

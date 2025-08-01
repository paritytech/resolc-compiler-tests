#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "false_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x7dD7B7b51816EF24Ffc66a03b832D627Ce7b4807"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "false_true",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1"
#!           ],
#!           "caller": "0x8E7c60A2dbbaf7E76A7291b1C1Bf7d5707f9866d"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "true_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "0"
#!           ],
#!           "caller": "0xdDCE81f462d5cd682fC82dDB274710077D2d2CF9"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "true_true",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0x90E81115f3F5e7c7E6D8c5E9B43CECb500A29B69"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(a: bool, b: bool) -> bool:
    return a or b

#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "zero",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0xBb832b686d459bbd3f1890F5a673E1078E8d4187"
#!         }
#!       ],
#!       "expected": [
#!         "0"
#!       ]
#!     },
#!     {
#!       "name": "ordinar",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "42"
#!           ],
#!           "caller": "0x5A235Ee05e7263DcC33D27F609E388ae41F418e0"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "max",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "127"
#!           ],
#!           "caller": "0x20aEc045D4B77D21Ed9D38707a5cd60277B8DaB8"
#!         }
#!       ],
#!       "expected": [
#!         "127"
#!       ]
#!     },
#!     {
#!       "name": "overflow_negative_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-1"
#!           ],
#!           "caller": "0x15767D84E9fC6B866413068cFB666D47520cd3ac"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_negative",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "-42"
#!           ],
#!           "caller": "0xB50024B77c3eCdfA2D0e64113f5d518b446ccD50"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_positive_minimal",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "256"
#!           ],
#!           "caller": "0x0549E1E605606Fa8C828b4303e71C304fd9641cE"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "overflow_positive",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1000"
#!           ],
#!           "caller": "0xCd2824C4b4C797140AD8fE556cD2D975B2eCE9F6"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     }
#!   ]
#! }

@external
@pure
def main(a: int16) -> uint8:
    return convert(a, uint8)

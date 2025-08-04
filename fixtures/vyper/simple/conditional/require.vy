#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "condition_true",
#!       "inputs": [
#!         {
#!           "method": "without_message",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0x7597B4d7b3F3bB9E216d638ba2B94e98e8296240"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "condition_false",
#!       "inputs": [
#!         {
#!           "method": "without_message",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x44Cd87d5676F462223C1844691b1F7F528277D68"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     },
#!     {
#!       "name": "condition_true",
#!       "inputs": [
#!         {
#!           "method": "with_message",
#!           "calldata": [
#!             "1"
#!           ],
#!           "caller": "0xF381c7D7E9EF66a29249CDFA3BF0F26DeD4033b6"
#!         }
#!       ],
#!       "expected": {
#!         "return_data": [
#!           "0x08C379A000000000000000000000000000000000000000000000000000000000",
#!           "0x0000002000000000000000000000000000000000000000000000000000000000",
#!           "0x000000054572726F720000000000000000000000000000000000000000000000",
#!           "0x0000000000000000000000000000000000000000000000000000000000000000"
#!         ],
#!         "exception": true
#!       }
#!     },
#!     {
#!       "name": "condition_false",
#!       "inputs": [
#!         {
#!           "method": "with_message",
#!           "calldata": [
#!             "0"
#!           ],
#!           "caller": "0x49E17931653d4460D33E32ad68F2321c7574EA0b"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def without_message(condition: bool) -> uint8:
    result: uint8 = 5

    if condition:
        assert result !=5
    
    return result

@external
@pure
def with_message(condition: bool) -> uint8:
    result: uint8 = 5

    if condition:
        assert result !=5, "Error"

    return result

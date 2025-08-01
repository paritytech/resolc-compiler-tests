#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!           "caller": "0xc7Aa50D99c1A3A18Ed7C9d0328eD05d26dB02fdd"
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
#!           "caller": "0x4dfa4a24AE48674b6E7350342568774a48A12eE6"
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
#!           "caller": "0xaA9156CbEbdef5eC3F01d9dd52dd707600eb1141"
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
#!           "caller": "0x501C62d6a497AD60eCBa8289a22E36c211D052e1"
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

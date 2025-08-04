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
#!           "caller": "0x6d1D0861500BfF05872313445797E3Af29340E51"
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
#!           "caller": "0x131Ac588Efc524B03aeb97F662543e79027c809C"
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
#!           "caller": "0xAa3dB170275BF5C1386742dE13B5FC1a3FEAA05F"
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
#!           "caller": "0x350b679e5094cB92F53CEB1Ec75daDA08a616AbA"
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

#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "false_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0",
#!             "25"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "42"
#!             ]
#!           },
#!           "caller": "0xb9Ead1b6354e77885cb5bd3E1314463050484242"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "false_true",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1",
#!             "25"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "42"
#!             ]
#!           },
#!           "caller": "0xA9Fd0bA23099c85aC653dD271bD82D5292425CAE"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "true_false",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "0",
#!             "25"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "42"
#!             ]
#!           },
#!           "caller": "0xa1c362b81F2fc81e47a78c773de8Fb2F404710dD"
#!         }
#!       ],
#!       "expected": [
#!         "42"
#!       ]
#!     },
#!     {
#!       "name": "true_true",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "1",
#!             "25"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "42"
#!             ]
#!           },
#!           "caller": "0x2599384abB5786D53aaA0317DcBc11F1866ad4f9"
#!         }
#!       ],
#!       "expected": [
#!         "25"
#!       ]
#!     }
#!   ]
#! }

data: uint8

@external
def main(gate_1: bool, gate_2: bool, _value: uint8) -> uint8:
    self.data = 42

    if gate_1:
        if gate_2:
            self.data = _value

    return self.data

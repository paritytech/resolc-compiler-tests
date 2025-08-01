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
#!             "0",
#!             "25"
#!           ],
#!           "storage": {
#!             "Test.address": [
#!               "42"
#!             ]
#!           },
#!           "caller": "0x8447Ed4C60F4d4E02120AD2263FC18E3ebfA89ba"
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
#!           "caller": "0x782792AfC3F2aEc82AD8F4A6e7D3ac5d8290f372"
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
#!           "caller": "0x1ECf60f310daC561676b5543325dCab8A23d4D30"
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
#!           "caller": "0x9CD8A8a35E3E3d73157B4924b428c73e36d9Fd4a"
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

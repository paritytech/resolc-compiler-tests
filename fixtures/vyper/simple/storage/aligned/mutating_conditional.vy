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
#!           "caller": "0x701a8ae0466d5A2DC4e44E8899c7e449bd939831"
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
#!           "caller": "0x8170329Af394340A7298A9e01827e6d91A173d08"
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
#!           "caller": "0x3b18DF45a534EA058A46C0AA6f0F0Ca32c680BB2"
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
#!           "caller": "0xbB3f1Bd9e803Ee2AC6aE603774d9736ee71d0B9A"
#!         }
#!       ],
#!       "expected": [
#!         "25"
#!       ]
#!     }
#!   ]
#! }

data: uint256

@external
def main(gate_1: bool, gate_2: bool, _value: uint8) -> uint8:
    if gate_1:
        if gate_2:
            self.data = convert(_value, uint256)

    return convert(self.data, uint8)

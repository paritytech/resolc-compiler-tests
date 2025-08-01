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
#!           "caller": "0xd11c8A7E1a6287A8dC5D72efdD570051F657F304"
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
#!           "caller": "0x19f01c356C169c9094bE13CA727DFada3e386235"
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
#!           "caller": "0xf48108fcD9136e4feb348Bc777ffE80Ef42a53A2"
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
#!           "caller": "0x3C5101F8A296555B2e9729dC647459D6C4F932f0"
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

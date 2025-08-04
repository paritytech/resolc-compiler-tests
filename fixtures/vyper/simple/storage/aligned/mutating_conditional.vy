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
#!           "caller": "0x6e16c2b8c26b6494b5E19087846E34F4E776a6D4"
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
#!           "caller": "0xb144913e253d6A67F98b4FDe39B1404D83c9e93c"
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
#!           "caller": "0x53631c502A44E2Ea3A7747649c9c61a76fE339b9"
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
#!           "caller": "0x542dAFc05B4103c7E188Fe07883Fd31E8a20305b"
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

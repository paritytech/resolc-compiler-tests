#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "one",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "0",
#!             "0",
#!             "5"
#!           ],
#!           "caller": "0x7b490Cd850215575469a7F64a14D58516dd57D34"
#!         }
#!       ],
#!       "expected": [
#!         "25"
#!       ]
#!     },
#!     {
#!       "name": "two",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1",
#!             "1",
#!             "5"
#!           ],
#!           "caller": "0xAdCc2A2eaB1c78f015c4D87E3e804aB4A40CE3f4"
#!         }
#!       ],
#!       "expected": [
#!         "50"
#!       ]
#!     },
#!     {
#!       "name": "three",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "1",
#!             "0",
#!             "5"
#!           ],
#!           "caller": "0xAE95E109C85F94024434C0d31D3465B5b89b138f"
#!         }
#!       ],
#!       "expected": [
#!         "75"
#!       ]
#!     },
#!     {
#!       "name": "four",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0",
#!             "0",
#!             "5"
#!           ],
#!           "caller": "0xF6E9Bb474b989693136ac3F11F713A5aF7cddd0B"
#!         }
#!       ],
#!       "expected": [
#!         "100"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(gates: bool[3], _mutated: uint8) -> uint8:
    mutated: uint8 = _mutated
    if gates[0]:
        mutated *= 5
    elif gates[1]:
        if gates[2]:
            mutated *= 10
        else:
            mutated *= 15
    else:
        mutated *= 20
    return mutated

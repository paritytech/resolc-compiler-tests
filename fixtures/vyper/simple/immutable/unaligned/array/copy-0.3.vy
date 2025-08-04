#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "main",
#!       "inputs": [
#!         {
#!           "method": "#deployer",
#!           "calldata": [
#!             "20",
#!             "15",
#!             "10",
#!             "5"
#!           ],
#!           "expected": [
#!             "Test.address"
#!           ],
#!           "caller": "0x6438A2a76e0dB4c076639415E94483167510e16A"
#!         },
#!         {
#!           "method": "main",
#!           "calldata": [],
#!           "caller": "0x6438A2a76e0dB4c076639415E94483167510e16A"
#!         }
#!       ],
#!       "expected": [
#!         "20",
#!         "15",
#!         "10",
#!         "5"
#!       ]
#!     }
#!   ]
#! }

data: immutable(uint8[4])

@external
def __init__(input: uint8[4]):
    data = input

@external
def main() -> uint8[4]:
    return data

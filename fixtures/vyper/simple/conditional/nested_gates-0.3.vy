#! {
#!   "modes": [
#!     "V <=0.3.10"
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
#!             "0"
#!           ],
#!           "caller": "0xB07e4a09e6ED698FF8aE3EBA8eEc2363C6a39e10"
#!         }
#!       ],
#!       "expected": [
#!         "1"
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
#!             "1"
#!           ],
#!           "caller": "0x76892e169dBc094F94783346b227BD8f29609521"
#!         }
#!       ],
#!       "expected": [
#!         "2"
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
#!             "0"
#!           ],
#!           "caller": "0x49e345303992e49cEE34b1E9De9Ec2aEbE4ec92a"
#!         }
#!       ],
#!       "expected": [
#!         "3"
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
#!             "0"
#!           ],
#!           "caller": "0xA82A938A1957679f7d7e34bF18Af9e4bDB119670"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     }
#!   ]
#! }

@external
@pure
def main(gates: bool[3]) -> uint8:
    if gates[0]:
        return 1
    elif gates[1]:
        if gates[2]:
            return 2
        else:
            return 3
    else:
        return 4

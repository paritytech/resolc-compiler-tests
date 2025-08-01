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
#!             "0"
#!           ],
#!           "caller": "0xb8b4f0274DDfCF00CEB9dF43441B6231703215e9"
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
#!           "caller": "0x4fD8306B8Ad7762920376056350A957dA4110c08"
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
#!           "caller": "0x7cd1555d5204555bA473a08879Ae21Bdb92654da"
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
#!           "caller": "0xbf9675630d3A550a22BaC62CFcBA576c341D5F89"
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

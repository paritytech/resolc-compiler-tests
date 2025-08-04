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
#!             "0",
#!             "5"
#!           ],
#!           "caller": "0x87339B84Cb07Ca2cC140E580E253aA07940481e9"
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
#!           "caller": "0x1928a351C4221fd945d4930062CF7CcC4B67495C"
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
#!           "caller": "0x4491cf6fFa5A3a43C550E46e768680111aE5a3D3"
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
#!           "caller": "0xbc63eaA3C6cA4253B7301f43C1a80b5813876329"
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

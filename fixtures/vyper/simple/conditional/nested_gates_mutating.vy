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
#!           "caller": "0xf41ace873E5a2CBe32a2a38Aed6AA9b4A052a3d5"
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
#!           "caller": "0x2E8Ba613df85A3A77476C05d413a91554151b6e7"
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
#!           "caller": "0x35A921d5f0FfC14cDCAD3064De0147EE36aA8192"
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
#!           "caller": "0x3B38CEfD779e33Ef657B1361d79d7955A99EC00d"
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

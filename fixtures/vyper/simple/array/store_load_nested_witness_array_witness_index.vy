#! {
#!   "modes": [
#!     "V >=0.4.0"
#!   ],
#!   "cases": [
#!     {
#!       "name": "element1",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0x3aF512c967Cd4BB52c6e7f6697A999d16B8c5d49"
#!         }
#!       ],
#!       "expected": [
#!         "1"
#!       ]
#!     },
#!     {
#!       "name": "element2",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "0",
#!             "1"
#!           ],
#!           "caller": "0xAD3CF58B320b026a494505877b6a27d15f491672"
#!         }
#!       ],
#!       "expected": [
#!         "2"
#!       ]
#!     },
#!     {
#!       "name": "element3",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "0",
#!             "2"
#!           ],
#!           "caller": "0xF1b05f7C8974ca47b0E23E4EaD2dCEaEb8F2a99C"
#!         }
#!       ],
#!       "expected": [
#!         "3"
#!       ]
#!     },
#!     {
#!       "name": "element4",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "1",
#!             "0"
#!           ],
#!           "caller": "0x19422427683425C462c65D1d084E876A39c871BA"
#!         }
#!       ],
#!       "expected": [
#!         "4"
#!       ]
#!     },
#!     {
#!       "name": "element5",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "1",
#!             "1"
#!           ],
#!           "caller": "0xaA33b678a38E41353345DF4fa037e5B070e848bD"
#!         }
#!       ],
#!       "expected": [
#!         "5"
#!       ]
#!     },
#!     {
#!       "name": "element6",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "1",
#!             "2"
#!           ],
#!           "caller": "0x7a235DbEd3a71d4377Bf4c99D3AF7Fdb1a0cf065"
#!         }
#!       ],
#!       "expected": [
#!         "6"
#!       ]
#!     },
#!     {
#!       "name": "element7",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "2",
#!             "0"
#!           ],
#!           "caller": "0x894fb73AE89fE3665725B573102d8c22DCeAA438"
#!         }
#!       ],
#!       "expected": [
#!         "7"
#!       ]
#!     },
#!     {
#!       "name": "element8",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "2",
#!             "1"
#!           ],
#!           "caller": "0xff59F4fd473F56BA2FaF5195f1EBF40817f9A91A"
#!         }
#!       ],
#!       "expected": [
#!         "8"
#!       ]
#!     },
#!     {
#!       "name": "element9",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "1",
#!             "2",
#!             "3",
#!             "4",
#!             "5",
#!             "6",
#!             "7",
#!             "8",
#!             "9",
#!             "2",
#!             "2"
#!           ],
#!           "caller": "0x787c087DaAD2Ab7c4d6F552A474e5240c01Dd088"
#!         }
#!       ],
#!       "expected": [
#!         "9"
#!       ]
#!     }
#!   ]
#! }

SIDE_SIZE: constant(uint8) = 3

@external
@pure
def main(array: uint8[SIDE_SIZE][SIDE_SIZE], i: uint8, j: uint8) -> uint8:
    return array[i][j]

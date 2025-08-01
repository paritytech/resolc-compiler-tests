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
#!           "caller": "0x1188987c286a466A52a713e6e262bbd5C5331B40"
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
#!           "caller": "0xcdF22c1FDA2550eE3363E025B82D24B4847279F0"
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
#!           "caller": "0x84f84311E96774b110402b1b566dD01E837a6c54"
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
#!           "caller": "0xd900EE44ac9ec8427f73ECf2229617313702F4C8"
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
#!           "caller": "0x8Ff6727023f71D7D2bb75aF72A5017fa4C441FD8"
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
#!           "caller": "0xF696fEB83e6AB080f5Ca207859C3261B71777539"
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
#!           "caller": "0xEb946384ea147A55CC5B5380747E07f28d99D43b"
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
#!           "caller": "0x5a834c9F427a6FF0FAd0c1A73f25683ac5AA4ca1"
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
#!           "caller": "0xC4E90286fe6471B1bB678bdAFB757E95F4b9f0d5"
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

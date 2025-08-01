#! {
#!   "modes": [
#!     "V <=0.3.10"
#!   ],
#!   "cases": [
#!     {
#!       "name": "element1",
#!       "inputs": [
#!         {
#!           "method": "main",
#!           "calldata": [
#!             "0",
#!             "0"
#!           ],
#!           "caller": "0xf51B71f121DC8ef4725b907D84826c45027F81A8"
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
#!             "0",
#!             "1"
#!           ],
#!           "caller": "0x53DDdC6cF4E6308E67eF19A89C81181cd0616558"
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
#!             "0",
#!             "2"
#!           ],
#!           "caller": "0x05067def7B4DE08D996613dA7B6Cf4CE58253460"
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
#!             "0"
#!           ],
#!           "caller": "0x47cbbC379307dE5671244E58d03136A12cE807Ad"
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
#!             "1"
#!           ],
#!           "caller": "0xb06B66c4CCe2551870DA1E25AF58A9c8FA966946"
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
#!             "2"
#!           ],
#!           "caller": "0x99F3E1976f24F45683CE8Ca70993b98a99B6e944"
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
#!             "2",
#!             "0"
#!           ],
#!           "caller": "0x512491bEc3Ccfc2834A7d6Fc87d69AC2512A5f97"
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
#!             "2",
#!             "1"
#!           ],
#!           "caller": "0xa3Ffc2E4CD11D2d5a128E519C55b6bcC6fd02c70"
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
#!             "2",
#!             "2"
#!           ],
#!           "caller": "0xe0950830652F5c94a8CcfE2CAFc6F748E3Bb948F"
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
def main(i: uint8, j: uint8) -> uint8:
    array: uint8[SIDE_SIZE][SIDE_SIZE] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    return array[i][j]

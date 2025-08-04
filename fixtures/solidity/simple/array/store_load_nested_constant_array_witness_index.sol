//! {
//!   "cases": [
//!     {
//!       "name": "element1",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x9DA3526e30EA8d20f041ddCe42566f1FD90Ad195"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "element2",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x3000351262CC3C846b947175FB6692013158935a"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "element3",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "2"
//!           ],
//!           "caller": "0xDa94402A53a279EB55D341EBec20EE5F8f076E98"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "element4",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x3951851f3978509E2a0d8ad61448F25B34f530d0"
//!         }
//!       ],
//!       "expected": [
//!         "4"
//!       ]
//!     },
//!     {
//!       "name": "element5",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xCb3D4401099C30e99497d234271bb1491889CFBC"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     },
//!     {
//!       "name": "element6",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "2"
//!           ],
//!           "caller": "0x7768f5A1661b76272Bd6fb924563F6e9b29605Ce"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     },
//!     {
//!       "name": "element7",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2",
//!             "0"
//!           ],
//!           "caller": "0x9d7B9D41f520c3E687f229f8F2a0F0AF9f25D31A"
//!         }
//!       ],
//!       "expected": [
//!         "7"
//!       ]
//!     },
//!     {
//!       "name": "element8",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2",
//!             "1"
//!           ],
//!           "caller": "0xb528A0e78F0E39DE59E2A0d5d3cadf8e4d23E330"
//!         }
//!       ],
//!       "expected": [
//!         "8"
//!       ]
//!     },
//!     {
//!       "name": "element9",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2",
//!             "2"
//!           ],
//!           "caller": "0x3481c20D090BD5787bcf2EbBDD33fC0da9246aD6"
//!         }
//!       ],
//!       "expected": [
//!         "9"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0;

contract Test {
    uint8 constant SIDE_SIZE = 3;

    function main(uint8 i, uint8 j) public pure returns(uint8) {
        uint8[SIDE_SIZE][SIDE_SIZE] memory array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]];
        return array[i][j];
    }
}

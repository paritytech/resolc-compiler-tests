//! {
//!   "cases": [
//!     {
//!       "name": "element1",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0xEf716e17496E6298FAd90e86C9E934eB1C5B0954"
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
//!             "1",
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0xc8e7294b68316fbfA1955FcD10BB849f5C4c512D"
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
//!             "1",
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "0",
//!             "2"
//!           ],
//!           "caller": "0xa03Ff8318f05780fe4Ec77F35c83F1A7AB018477"
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
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0xA59fFA60bA32f30f4e2fA0EDf24888D0f9B57534"
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
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x30D65bd8C04b9b0cCfe0a64DbE955f5A54B6Be92"
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
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "1",
//!             "2"
//!           ],
//!           "caller": "0xa09CD0DeEC57f04DbDa0eC968B484BC219d808C2"
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
//!             "1",
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "2",
//!             "0"
//!           ],
//!           "caller": "0x36C09E738D3069197E08779f47A9537AA1279933"
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
//!             "1",
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "2",
//!             "1"
//!           ],
//!           "caller": "0xf13591Fa799bD2Fdc636C45c6f5088beA28bA35F"
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
//!             "1",
//!             "2",
//!             "3",
//!             "4",
//!             "5",
//!             "6",
//!             "7",
//!             "8",
//!             "9",
//!             "2",
//!             "2"
//!           ],
//!           "caller": "0x68e1755DE5Ff0c2C7c3858415125DB568334A30f"
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

    function main(uint8[SIDE_SIZE][SIDE_SIZE] memory array, uint8 i, uint8 j) public pure returns(uint8) {
        return array[i][j];
    }
}

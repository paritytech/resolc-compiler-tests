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
//!           "caller": "0xd32a2f459d2cff81bb947ed7cc6c089dbe7f8c0d"
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
//!           "caller": "0x0573ee8be712c037e779b78a7609357ca4439c8e"
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
//!           "caller": "0x6311ccbe8278e618d8223c4a64975ca5200e3283"
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
//!           "caller": "0x1c861ad94347ff0e9cb9e58b6d68a900105e2364"
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
//!           "caller": "0x72f0ead12116ddf1a731a33c96afa0bcf4df92a6"
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
//!           "caller": "0xf5543b2c43ef0333961cea3897e7853853b62b0b"
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
//!           "caller": "0x33ff606dbfbfdc3778a8f7df298e0a6f6f5f5a8a"
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
//!           "caller": "0xa134e9274c0205bee97cca571b56d0bac68717ad"
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
//!           "caller": "0x96e08da42be69fd156638b22c179e2f8994a8b1e"
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

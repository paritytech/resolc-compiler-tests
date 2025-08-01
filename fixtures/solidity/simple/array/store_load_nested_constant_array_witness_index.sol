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
//!           "caller": "0xA6D90EDb47D2C2fA397A495465Bdf5e01c78E024"
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
//!           "caller": "0x5e998b1AE47797a7b65d301601BA11b5cB54f0f6"
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
//!           "caller": "0xb1D026BB927c725E4244cD4DF18b463f1227cF2a"
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
//!           "caller": "0x97C09Eca121ecA225f5b76562D6b3EFA5f24C7A4"
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
//!           "caller": "0x229da9CBa1cf651f9aC4282B0Aeb8CAC11Fd8990"
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
//!           "caller": "0xB4ED2a9fba8fbD456DE93FD1A0949b0caFC80b0d"
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
//!           "caller": "0x34eAE375f5fDF4B679e7B62ee1Ee3dF3d1Bb57F5"
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
//!           "caller": "0x832735f5BF0300031B36186F22143dA1e3b3Deb3"
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
//!           "caller": "0x3896F4706f4e3D1A5B453882017499083fAC7832"
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

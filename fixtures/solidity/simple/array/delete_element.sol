//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E",
//!     "I"
//!   ],
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "first",
//!           "calldata": [],
//!           "caller": "0x8568A66dD671Aef7a828766c7436b1a5cF8299D8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "second",
//!           "calldata": [],
//!           "caller": "0xA3484A1a705F07ed993E770f462a5F1314f3B24A"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "third",
//!           "calldata": [],
//!           "caller": "0xC369A8d1F3d6719F9041Bc74C5CF9aF5ff524E21"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "four",
//!       "inputs": [
//!         {
//!           "method": "four",
//!           "calldata": [],
//!           "caller": "0x846B90AA87568cfeaEca304fc2Ef75E139390926"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "five",
//!       "inputs": [
//!         {
//!           "method": "five",
//!           "calldata": [],
//!           "caller": "0x22CC3D49D872522cd5bdA3403425027F5a987Ed8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "six",
//!       "inputs": [
//!         {
//!           "method": "six",
//!           "calldata": [],
//!           "caller": "0x153db09EDEef6c7a4f3a2a0993ef142EbF97bE5D"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "seven",
//!       "inputs": [
//!         {
//!           "method": "seven",
//!           "calldata": [],
//!           "caller": "0xF71fDE9d9A4d5Fb8c7C9Ef63697733E2215494ad"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "eight",
//!       "inputs": [
//!         {
//!           "method": "eight",
//!           "calldata": [],
//!           "caller": "0x40Cc9dc4a6C9bFd3A3845732193d7cC46fa584F1"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "nine",
//!       "inputs": [
//!         {
//!           "method": "nine",
//!           "calldata": [],
//!           "caller": "0xB31D79BeA344c9dC1a1826B5deFcb3B74a5253bD"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ten",
//!       "inputs": [
//!         {
//!           "method": "ten",
//!           "calldata": [],
//!           "caller": "0x099c08A4B72635600d76eB4569737BF6ef236371"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "eleven",
//!       "inputs": [
//!         {
//!           "method": "eleven",
//!           "calldata": [
//!             "0x20",
//!             "0x03",
//!             "1",
//!             "2",
//!             "3"
//!           ],
//!           "caller": "0xc963264a1C7F359cb66AF691e6ABdcD36b32A15d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "twelve",
//!       "inputs": [
//!         {
//!           "method": "twelve",
//!           "calldata": [
//!             "0x20",
//!             "0x03",
//!             "1",
//!             "2",
//!             "3"
//!           ],
//!           "caller": "0x86f38c51a2a3E1FD93eD4448A62F3445B18C9291"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    uint256[2][] arr;

    function first() public returns (uint256) {
        uint256[] memory x = new uint256[](42);
        delete x;
        assert(x.length == 0);
        return 0;
    }

    function second() public returns (uint256) {
        uint256[][] memory x = new uint256[][](42);
        delete x;
        assert(x.length == 0);
        return 0;
    }

    function third() public returns (uint256) {
        uint256[][] memory x = new uint256[][](42);
        delete x;
        delete x;
        assert(x.length == 0);
        return 0;
    }

    function four() public returns (uint256) {
        uint256[][] memory x = new uint256[][](42);
        x[1] = new uint256[](7);
        delete x[0];
        assert(x[1].length == 7);
        return 0;
    }

    function five() public returns (uint256) {
        uint256[5] memory x;
        delete x;
        assert(x.length == 5);
        return 0;
    }

    function six() public returns (uint256) {
        uint256[5] memory x;
        x[0] = 99;
        delete x;
        assert(x[0] == 0);
        return 0;
    }

    function seven() public returns (uint256) {
        arr.push([11, 22]);
        delete arr[0];
        assert(arr[0].length == 2);
        return 0;
    }

    function eight() public returns (uint256) {
        uint256[2][] memory x = new uint256[2][](3);
        x[0] = [uint(99), 11];
        delete x;
        assert(x.length == 0);
        return 0;
    }

    function nine() public returns (uint256) {
        uint256[2][] memory x = new uint256[2][](3);
        x[0] = [uint(99), 11];
        delete x[0];
        assert(x[2].length == 2);
        return 0;
    }

    function ten() public returns (uint256) {
        uint256[5][] memory x = new uint256[5][](0);
        delete x;
        assert(x.length == 0);
        return 0;
    }

    function eleven(uint256[] memory array) public returns (uint256) {
        delete array;
        assert(array.length == 0);
        return 0;
    }

    function twelve(uint256[3] memory array) public returns (uint256) {
        delete array;
        assert(array.length == 3);
        return 0;
    }
}

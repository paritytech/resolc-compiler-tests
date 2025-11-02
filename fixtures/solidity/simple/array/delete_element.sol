//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E >=0.8.1"
//!   ],
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "first",
//!           "calldata": [],
//!           "caller": "0x46b06e9d7f1e15bb48610b43293848b76db1c85f"
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
//!           "caller": "0x4309dfb5ee7b9cb8c720e7bae45183f74d54286a"
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
//!           "caller": "0x11c1bc3c69fec182b309720703c73cf6b20e3b40"
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
//!           "caller": "0xc4b0e0c875165428a56f09052e2033e9e1ae45cf"
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
//!           "caller": "0xfa794ab555b99ec171a929609f785f6d5f85aef9"
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
//!           "caller": "0xc08b042525b5fcccc5798fd37ed5c89299ac34d0"
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
//!           "caller": "0xc11c5ddb5ae1de8f9d3d7d4d99865d831835065a"
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
//!           "caller": "0x105b36871cc42376279ee578ecc41708e65d0f0c"
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
//!           "caller": "0x5762792ca89a9f5e39a36ca573a3bfc38fe534f0"
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
//!           "caller": "0x0321a34a4a1d18be7657b167c36a527abd3dabe7"
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
//!           "caller": "0xc699153ecc2d882c6f8945003792d379353b156a"
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
//!           "caller": "0x2f96dc0a585178047527195f3b98afd41edf9e1c"
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

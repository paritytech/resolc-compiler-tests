//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "first",
//!           "calldata": [],
//!           "caller": "0xE496177eA0AFFf1F746D21212E3AeF3A346E8aB1"
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
//!           "caller": "0xE14DE67761227911958d5aF663894AC2090A076E"
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
//!           "caller": "0xA234878F4d05aaa91191832c4A6eFacFe5f01aae"
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
//!           "caller": "0x52429836Ebf290aa087091343AeCE65B8D0C0b3f"
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
//!           "caller": "0x9Bd95faf55413E7309F89bD1957912fe2B1E5FFa"
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
//!           "caller": "0x8d502e425545988CbD0140e169DAceFb04f2F7c5"
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
//!           "caller": "0x614d48e801e12ECa91e4Fb84544c06e871E876Bd"
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
//!           "caller": "0x4Ec33709d96c4467Fd2d2BF97493B78C2EE21ade"
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
//!           "caller": "0xd1a2597469682EE3b7343a7C657E32b7eaBAC940"
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
//!           "caller": "0x75B020Cc5Aa20e0aD0BbAf47fB9601B22F2bC3d1"
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
//!           "caller": "0xFf42aFa9031CF2273122cA4e5a6c07861781CF81"
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
//!           "caller": "0xA0BF0b6bd2908C511953A97C043F4a07f9cf6d14"
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

//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "f1",
//!           "calldata": [],
//!           "caller": "0xce868d5e6801d8286899f703d09cf0a9b15ed6dc"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "f2",
//!           "calldata": [],
//!           "caller": "0x21e785cea09c6c19d0811e0736d776c9e0395ece"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "2",
//!         "1",
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "f3",
//!           "calldata": [],
//!           "caller": "0x47f62787aaf482fda9a085e0a28e8e15621fb8ef"
//!         }
//!       ],
//!       "expected": [
//!         "3",
//!         "4",
//!         "1",
//!         "2"
//!       ]
//!     },
//!     {
//!       "name": "fourth",
//!       "inputs": [
//!         {
//!           "method": "f4",
//!           "calldata": [],
//!           "caller": "0x9b2f0eef40e80ad239d8b893c50de5dded0fb259"
//!         }
//!       ],
//!       "expected": [
//!         "3",
//!         "4",
//!         "1",
//!         "2"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    uint256[2] public a;
    uint256[2] public b;

    function f1() public returns (uint256[2] memory) {
        a = [uint256(1), 2];
        (a, a[1]) = (a, a[0]);

        return a;
    }

    function f2() public returns (uint256[2] memory, uint256[2] memory) {
        a = [uint256(1), 2];
        b = [uint256(3), 4];
        (a, b) = (b, a);

        return (a, b);
    }

    function f3() public returns (uint256[2] memory, uint256[2] memory) {
        uint256[2] memory a1 = [uint256(1), 2];
        uint256[2] memory b1 = [uint256(3), 4];
        (a1, b1) = (b1, a1);

        return (a1, b1);
    }

    function f4() public returns (uint256[2] memory, uint256[2] memory) {
        a = [uint256(1), 2];
        uint256[2] memory b1 = [uint256(3), 4];
        (a, b1) = (b1, a);

        return (a, b1);
    }
}

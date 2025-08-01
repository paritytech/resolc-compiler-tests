//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "f1",
//!           "calldata": [],
//!           "caller": "0xeF77bA6d57a3D580D9cE991Db74a9822CD7175B6"
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
//!           "caller": "0xb9c22447F9978233eE6F09A58a01bAbD3f513122"
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
//!           "caller": "0x341F5900efE7d37Ae7bA6BBe9209944f7080f7Da"
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
//!           "caller": "0xF6361E774eCbB56Df8590c3004e1110F15466c02"
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

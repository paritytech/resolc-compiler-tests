//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "f1",
//!           "calldata": [],
//!           "caller": "0xeC9f6d06470eBCc7507f9C81fd60958514bc65aB"
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
//!           "caller": "0x15459c2F58fD2360018d60D129a9f69f2E280D8C"
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
//!           "caller": "0xD79A788f13b0E112EaF3cb154D60Ca35dd95e59A"
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
//!           "caller": "0xdCd0bCeD0D2D76E4Aa59d9C27690ba0220E7D95c"
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

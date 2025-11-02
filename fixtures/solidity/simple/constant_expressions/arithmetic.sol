//! {
//!   "cases": [
//!     {
//!       "name": "test",
//!       "inputs": [
//!         {
//!           "method": "test",
//!           "calldata": [
//!             "1",
//!             "3",
//!             "2"
//!           ],
//!           "caller": "0x45d342ddd3fd59a477060ea9fd67cfdec7bdce7b"
//!         }
//!       ],
//!       "expected": [
//!         "7",
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "exp",
//!       "inputs": [
//!         {
//!           "method": "exp",
//!           "calldata": [],
//!           "caller": "0xade74c955b937d69bb87faeb91c87bab57f51405"
//!         }
//!       ],
//!       "expected": [
//!         "2"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function test(uint8 a, uint8 b, uint8 c) public pure returns (uint8, uint8) {
        return (
            ((-0 + 1 / 10)*25 - 3/10) * 3 + 2/5,
            ((-0 + a / 10)*25 - b/10) * 3 + c/5
        );
    }

    function exp() public pure returns (uint256) {
        return (7/13)**300*26**300/2**299/7**300;
    }
}

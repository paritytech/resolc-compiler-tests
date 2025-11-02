//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "2",
//!             "3"
//!           ],
//!           "caller": "0x7099c4e526044061cfe18a0dc25461722af474b0"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;
pragma experimental ABIEncoderV2;

contract Test {
    struct Data {
        uint8 a;
        uint8 b;
        uint8 c;
    }

    function sum(Data memory data) private pure returns(uint8) {
        return data.a + data.b + data.c;
    }

    function main(Data memory witness) public pure returns(uint8) {
        return sum(witness);
    }
}

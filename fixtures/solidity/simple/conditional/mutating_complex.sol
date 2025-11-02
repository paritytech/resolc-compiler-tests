//! {
//!   "cases": [
//!     {
//!       "name": "conditionTrue",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x0b74a0740a984e2f314f8ff721a288bded6647b2"
//!         }
//!       ],
//!       "expected": [
//!         "1000256"
//!       ]
//!     },
//!     {
//!       "name": "conditionFalse",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x5b98231a694f6eadeb52d900468ffd40082fd728"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;
pragma experimental ABIEncoderV2;

contract Test {
    struct Data {
        bool a;
        uint8 b;
        uint256 c;
    }

    function main(Data memory witness, bool condition) public pure returns(uint64) {
        if (condition) {
            witness = Data(
                true,
                255,
                1000000
            );
        }

        if (witness.a) {
            return 1 + uint64(witness.b) + uint64(witness.c);
        } else {
            return 0 + uint64(witness.b) + uint64(witness.c);
        }
    }
}

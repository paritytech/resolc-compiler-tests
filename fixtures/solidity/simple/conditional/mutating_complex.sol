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
//!           "caller": "0x434f7fD9CC730C6DDcee9b0d527F3b4A71430d40"
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
//!           "caller": "0xD6F4E359C03434a3d5b7393080ec0A35309D363d"
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

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
//!           "caller": "0x40d665763f3DA2E4e83B0c9a05532400713f12dE"
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
//!           "caller": "0x4928e008c1Fd693823c290Cb0f9FeAA23CEcaf49"
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

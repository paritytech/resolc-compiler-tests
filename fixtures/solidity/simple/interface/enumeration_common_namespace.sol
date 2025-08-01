//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3"
//!           ],
//!           "caller": "0x290156610F3DD91dF3af86E983404Aa47B74704C"
//!         }
//!       ],
//!       "expected": [
//!         "51"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    enum Data {
        VALUE
    }

    uint8 constant ANOTHER =  25;

    function test(uint8 witness) private pure returns(uint8) {
        return (uint8(Data.VALUE) + 42 - ANOTHER) * witness;
    }

    function main(uint8 witness) public pure returns(uint8) {
        return test(witness);
    }
}

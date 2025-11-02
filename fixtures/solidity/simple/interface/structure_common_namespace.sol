//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x84346b1845436fd98e16f9e829c3011b3a6c5ef7"
//!         }
//!       ],
//!       "expected": [
//!         "210"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;
pragma experimental ABIEncoderV2;

contract Test {
    struct Data {
        uint8 factor;
    }

    function test(Data memory data, uint8 witness) private pure returns(uint8) {
        return witness * data.factor;
    }

    function main(uint8 witness) public pure returns(uint8) {
        Data memory data = Data(5);
        return test(data, witness);
    }
}

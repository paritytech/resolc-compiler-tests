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
//!           "caller": "0x8CB901AEe7975386F60B5Fc4687aCC2A6B329096"
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

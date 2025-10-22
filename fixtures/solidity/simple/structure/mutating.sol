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
//!           "caller": "0x51909c486ac78b189c8794a855fc2bd65635aeb7"
//!         }
//!       ],
//!       "expected": [
//!         "64"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    struct Test {
        uint8 x;
        uint8 y;
        uint8 z;
    }

    function main(uint8 witness) public pure returns(uint8) {
        Test memory test = Test(1, 2, 3);

        test.x += 5 * witness;
        test.y += 7 * witness;
        test.z += 9 * witness;

        return test.z + test.y + test.x - 5;
    }
}

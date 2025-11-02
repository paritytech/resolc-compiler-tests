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
//!           "caller": "0xc92fb2e3f1a8f9861876ee812dfdedb3e845d13a"
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

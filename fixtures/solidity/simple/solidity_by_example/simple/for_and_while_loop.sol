//! {
//!   "cases": [
//!     {
//!       "name": "loop",
//!       "inputs": [
//!         {
//!           "method": "loop",
//!           "calldata": [],
//!           "caller": "0x3f0e98ed6b9374df05713d073e055bc801aa10d1"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    function loop() public {
        // for loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}


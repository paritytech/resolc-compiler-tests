//! {
//!   "cases": [
//!     {
//!       "name": "loop",
//!       "inputs": [
//!         {
//!           "method": "loop",
//!           "calldata": [],
//!           "caller": "0xf0Cd998500fC71F8F08C2A85ce3F858B84c36a89"
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


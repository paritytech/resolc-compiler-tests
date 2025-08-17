//! {
//!   "cases": [
//!     {
//!       "name": "loop",
//!       "inputs": [
//!         {
//!           "method": "loop",
//!           "calldata": [],
//!           "caller": "0xc9c987066998a6e85358a8edbcdf1404711a7b46"
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


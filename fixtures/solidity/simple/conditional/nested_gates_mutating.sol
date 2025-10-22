//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0",
//!             "0",
//!             "5"
//!           ],
//!           "caller": "0x07f2fd453eefd3c3b91be724f1b70e23d2fdcbd9"
//!         }
//!       ],
//!       "expected": [
//!         "25"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "1",
//!             "5"
//!           ],
//!           "caller": "0x318f78221ffb96d081b674fa638a3250d8146628"
//!         }
//!       ],
//!       "expected": [
//!         "50"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1",
//!             "0",
//!             "5"
//!           ],
//!           "caller": "0x63e8eb7dd414ea6785d67d8ecc20542667316b9d"
//!         }
//!       ],
//!       "expected": [
//!         "75"
//!       ]
//!     },
//!     {
//!       "name": "four",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0",
//!             "5"
//!           ],
//!           "caller": "0x6b136fb82fe2520d682a55e788394ef503a30868"
//!         }
//!       ],
//!       "expected": [
//!         "100"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(bool[3] memory gates, uint8 mutated) public pure returns(uint8) {
        if (gates[0]) {
            mutated *= 5;
        } else if (gates[1]) {
            if (gates[2]) {
                mutated *= 10;
            } else {
                mutated *= 15;
            }
        } else {
            mutated *= 20;
        }
        return mutated;
    }
}

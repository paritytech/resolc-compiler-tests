//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E",
//!     "I"
//!   ],
//!   "cases": [
//!     {
//!       "name": "text",
//!       "inputs": [
//!         {
//!           "method": "doSomething",
//!           "calldata": [],
//!           "caller": "0x29a5e751A8244bF14559B38fF660d223637FE8Ad"
//!         },
//!         {
//!           "method": "text",
//!           "calldata": [],
//!           "caller": "0x29a5e751A8244bF14559B38fF660d223637FE8Ad"
//!         }
//!       ],
//!       "expected": [
//!         "0x20",
//!         "5",
//!         "0x48656c6c6f000000000000000000000000000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "num",
//!       "inputs": [
//!         {
//!           "method": "doSomething",
//!           "calldata": [],
//!           "caller": "0x025170FE94e576dDF9a2e1D989D1E988314AB9f1"
//!         },
//!         {
//!           "method": "num",
//!           "calldata": [],
//!           "caller": "0x025170FE94e576dDF9a2e1D989D1E988314AB9f1"
//!         }
//!       ],
//!       "expected": [
//!         "123"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.16;

contract Test {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}

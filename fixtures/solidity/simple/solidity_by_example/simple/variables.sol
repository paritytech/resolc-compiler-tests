//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "text",
//!       "inputs": [
//!         {
//!           "method": "doSomething",
//!           "calldata": [],
//!           "caller": "0x5b188d49A33801277628399BD170D51f8D2F1c89"
//!         },
//!         {
//!           "method": "text",
//!           "calldata": [],
//!           "caller": "0x5b188d49A33801277628399BD170D51f8D2F1c89"
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
//!           "caller": "0x15a1AA96f0be65CDa2558Fc87f19E7eCc947F7cd"
//!         },
//!         {
//!           "method": "num",
//!           "calldata": [],
//!           "caller": "0x15a1AA96f0be65CDa2558Fc87f19E7eCc947F7cd"
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

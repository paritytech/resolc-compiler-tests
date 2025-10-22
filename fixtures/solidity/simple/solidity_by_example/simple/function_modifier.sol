//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E >=0.8.1"
//!   ],
//!   "cases": [
//!     {
//!       "name": "changeOwnerOk",
//!       "inputs": [
//!         {
//!           "caller": "0x53adc7c66ec868a7825e9cb4eacae0fa71548336",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0x53adc7c66ec868a7825e9cb4eacae0fa71548336",
//!           "method": "changeOwner",
//!           "calldata": [
//!             "0xDEADBEEF00000000000000000000000000000002"
//!           ]
//!         },
//!         {
//!           "method": "owner",
//!           "calldata": [],
//!           "caller": "0x1dd089b1e4fa3d16e9a5d1026cda6fec052853a9"
//!         }
//!       ],
//!       "expected": [
//!         "0xDEADBEEF00000000000000000000000000000002"
//!       ]
//!     },
//!     {
//!       "name": "changeOwnerErrorOnlyOwner",
//!       "inputs": [
//!         {
//!           "caller": "0x4f7fc6a8636191c510a020b023405726263af2be",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0xc7b45f132228bd62c9c7a81da099a9f1e292eeb3",
//!           "method": "changeOwner",
//!           "calldata": [
//!             "0xc7b45f132228bd62c9c7a81da099a9f1e292eeb3"
//!           ]
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x08c379a000000000000000000000000000000000000000000000000000000000",
//!           "0x0000002000000000000000000000000000000000000000000000000000000000",
//!           "0x000000094e6f74206f776e657200000000000000000000000000000000000000",
//!           "0x0000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "changeOwnerErrorValidAddress",
//!       "inputs": [
//!         {
//!           "caller": "0x62e5d4e77639c6b1c7eeb21c9a3bbdb5f87440e3",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0x62e5d4e77639c6b1c7eeb21c9a3bbdb5f87440e3",
//!           "method": "changeOwner",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000"
//!           ]
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0x08c379a000000000000000000000000000000000000000000000000000000000",
//!           "0x0000002000000000000000000000000000000000000000000000000000000000",
//!           "0x000000114e6f742076616c696420616464726573730000000000000000000000",
//!           "0x0000000000000000000000000000000000000000000000000000000000000000"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "decrementOk",
//!       "inputs": [
//!         {
//!           "method": "decrement",
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0xbdf75a1cdf0a3fc4618f3529902a340db6837160"
//!         },
//!         {
//!           "method": "x",
//!           "calldata": [],
//!           "caller": "0xbdf75a1cdf0a3fc4618f3529902a340db6837160"
//!         }
//!       ],
//!       "expected": [
//!         "9"
//!       ]
//!     },
//!     {
//!       "name": "decrementError",
//!       "inputs": [
//!         {
//!           "method": "decrement",
//!           "calldata": [
//!             "2"
//!           ],
//!           "expected": {
//!             "return_data": [
//!               "0x08c379a000000000000000000000000000000000000000000000000000000000",
//!               "0x0000002000000000000000000000000000000000000000000000000000000000",
//!               "0x0000000d4e6f207265656e7472616e6379000000000000000000000000000000",
//!               "0x0000000000000000000000000000000000000000000000000000000000000000"
//!             ],
//!             "exception": true
//!           },
//!           "caller": "0xc30879024494ff81ca060407785da27dae9d2c10"
//!         },
//!         {
//!           "method": "x",
//!           "calldata": [],
//!           "caller": "0xc30879024494ff81ca060407785da27dae9d2c10"
//!         }
//!       ],
//!       "expected": [
//!         "10"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

contract Test {
    // We will use these variables to demonstrate how to use
    // modifiers.
    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        // Set the transaction sender as the owner of the contract.
        owner = msg.sender;
    }

    // Modifier to check that the caller is the owner of
    // the contract.
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        // Underscore is a special character only used inside
        // a function modifier and it tells Solidity to
        // execute the rest of the code.
        _;
    }

    // Modifiers can take inputs. This modifier checks that the
    // address passed in is not the zero address.
    modifier validAddress(address _addr) {
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(
        address _newOwner
    ) public onlyOwner validAddress(_newOwner) {
        owner = _newOwner;
    }

    // Modifiers can be called before and / or after a function.
    // This modifier prevents a function from being called while
    // it is still executing.
    modifier noReentrancy() {
        require(!locked, "No reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public noReentrancy {
        x -= i;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}

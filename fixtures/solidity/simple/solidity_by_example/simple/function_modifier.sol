//! {
//!   "modes": [
//!     "Y >=0.8.1",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "changeOwnerOk",
//!       "inputs": [
//!         {
//!           "caller": "0xe64b040B08c981281f3BfB1270394ca93094b2e7",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0xe64b040B08c981281f3BfB1270394ca93094b2e7",
//!           "method": "changeOwner",
//!           "calldata": [
//!             "0xDEADBEEF00000000000000000000000000000002"
//!           ]
//!         },
//!         {
//!           "method": "owner",
//!           "calldata": [],
//!           "caller": "0xE814Db43B389821287E9D414d24c7B524e59e4B1"
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
//!           "caller": "0x360d8100E887CD3398A9e08380d205B7391c5D1f",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0xAa59C2103655Fda8c48de281A811993cB1c8573c",
//!           "method": "changeOwner",
//!           "calldata": [
//!             "0xAa59C2103655Fda8c48de281A811993cB1c8573c"
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
//!           "caller": "0x9Dfb749e323d0EA364922137d7dd5123FbC70aF8",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0x9Dfb749e323d0EA364922137d7dd5123FbC70aF8",
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
//!           "caller": "0xD9B003bd4f8AeE1bEBb1349F5F8f3445f2e74e0d"
//!         },
//!         {
//!           "method": "x",
//!           "calldata": [],
//!           "caller": "0xD9B003bd4f8AeE1bEBb1349F5F8f3445f2e74e0d"
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
//!           "caller": "0x4ef06Dd336489ddDce62a07436967C405bcC940f"
//!         },
//!         {
//!           "method": "x",
//!           "calldata": [],
//!           "caller": "0x4ef06Dd336489ddDce62a07436967C405bcC940f"
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

    function changeOwner(address _newOwner) public onlyOwner validAddress(_newOwner) {
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

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
//!           "caller": "0x8566028B442036F285e8810e08Cdc9b285b6FB1D",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0x8566028B442036F285e8810e08Cdc9b285b6FB1D",
//!           "method": "changeOwner",
//!           "calldata": [
//!             "0xDEADBEEF00000000000000000000000000000002"
//!           ]
//!         },
//!         {
//!           "method": "owner",
//!           "calldata": [],
//!           "caller": "0x8566028B442036F285e8810e08Cdc9b285b6FB1D"
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
//!           "caller": "0xa0D8C7260f6f68091A5eA78F24B9dab0334D7429",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0x20eef93B27D29Dc91D011da650Ab19B5Cd22cA62",
//!           "method": "changeOwner",
//!           "calldata": [
//!             "0x20eef93B27D29Dc91D011da650Ab19B5Cd22cA62"
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
//!           "caller": "0xE8619867FFaf3668193a51CF59838d9B67D08fd9",
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": [
//!             "Test.address"
//!           ]
//!         },
//!         {
//!           "caller": "0xE8619867FFaf3668193a51CF59838d9B67D08fd9",
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
//!           "caller": "0x7C8975886DAE855EE2484f2529Ae36a8fFaeA7FC"
//!         },
//!         {
//!           "method": "x",
//!           "calldata": [],
//!           "caller": "0x7C8975886DAE855EE2484f2529Ae36a8fFaeA7FC"
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
//!           "caller": "0x3B532e4733745AB7fb80d850D6610E5Db9178274"
//!         },
//!         {
//!           "method": "x",
//!           "calldata": [],
//!           "caller": "0x3B532e4733745AB7fb80d850D6610E5Db9178274"
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

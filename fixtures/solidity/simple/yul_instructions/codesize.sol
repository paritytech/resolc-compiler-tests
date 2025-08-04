//! {
//!   "cases": [
//!     {
//!       "name": "zero_deploy",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [],
//!           "caller": "0x055905e6Dd80D34F8B7D27C2899e7F56adC15af2"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "*"
//!         ],
//!         "events": [
//!           {
//!             "address": "Test.address",
//!             "topics": [],
//!             "values": [
//!               "*"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "one_deploy",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": "0x00",
//!           "caller": "0x9E38bBFcD2e7F3290356b92F8c15F81a8aA41641"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "*"
//!         ],
//!         "events": [
//!           {
//!             "address": "Test.address",
//!             "topics": [],
//!             "values": [
//!               "*"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "small_ordinar_deploy",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": "0x00000000000000000000000000000000000000",
//!           "caller": "0x15569B0884B7f3d45ca1bba7e169d952982194D9"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "*"
//!         ],
//!         "events": [
//!           {
//!             "address": "Test.address",
//!             "topics": [],
//!             "values": [
//!               "*"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "word_deploy",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xec33B5f09296eab508d618C1aFe17cD8351aE9a3"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "*"
//!         ],
//!         "events": [
//!           {
//!             "address": "Test.address",
//!             "topics": [],
//!             "values": [
//!               "*"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "ordinar_deploy",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
//!           "caller": "0x985B3F2B15092bF249ED55b0B9E62e9209C41B7F"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "*"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "*"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "ordinar_words_deploy",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x26AC60640C2dc46CD79fe74055aDDd7AC40Bc641"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "*"
//!         ],
//!         "events": [
//!           {
//!             "address": "Test.address",
//!             "topics": [],
//!             "values": [
//!               "*"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "runtime",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [],
//!           "expected": {
//!             "return_data": [
//!               "*"
//!             ],
//!             "events": [
//!               {
//!                 "address": "Test.address",
//!                 "topics": [],
//!                 "values": [
//!                   "*"
//!                 ]
//!               }
//!             ]
//!           },
//!           "caller": "0xD156A3D35A4264c05178987c6a6830550A5eBC6f"
//!         },
//!         {
//!           "method": "runtime",
//!           "calldata": [],
//!           "caller": "0xD156A3D35A4264c05178987c6a6830550A5eBC6f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22;

contract Test {
    constructor() public {
        assembly {
            mstore(0, codesize())
            log0(0, 32)
        }
    }

    function runtime() external {
        assembly {
            mstore(0, eq(codesize(), extcodesize(address())))
            return(0, 32)
        }
    }
}

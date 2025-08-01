//! {
//!   "cases": [
//!     {
//!       "name": "zero_deploy",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [],
//!           "caller": "0x615188aA290765Ee23DEC53804b99669dC5e90e6"
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
//!           "caller": "0x55b69F1F4542F7519622476670c0Ad565FEaDC7b"
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
//!           "caller": "0x6601d0Eb82B546877455aC041Ce3Bcc69Af45167"
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
//!           "caller": "0xbe8840e3C1E711b90956E449275760329cA02532"
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
//!           "caller": "0xD1316E20e1c48164260D375f7f729A5C5Ab5CB7b"
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
//!           "caller": "0xb91D5C4076c338d4474D878b69a0C07909F4d92f"
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
//!           "caller": "0x5B125e43A4ce4f7E35da4C211b4FcF288b3b16E9"
//!         },
//!         {
//!           "method": "runtime",
//!           "calldata": [],
//!           "caller": "0x5B125e43A4ce4f7E35da4C211b4FcF288b3b16E9"
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

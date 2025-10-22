//! {
//!   "cases": [
//!     {
//!       "name": "zero_deploy",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [],
//!           "caller": "0x7f5670c0a5f0deee2067a84c4f23e0cf5f32b217"
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
//!           "caller": "0x011fa4b3b09dc0af28f8ff56e4a83fed287b5779"
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
//!           "caller": "0xe6576f01af3dacec69e0e99abc68135cde755940"
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
//!           "caller": "0xd2d9c27cc20dab5751ae34ceafa5fcc5bce1255a"
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
//!           "caller": "0x05b829b81a27c4b094a709ad2be3ca3b94e8fd28"
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
//!           "caller": "0x39bdf9d79560028fc073c072e0ee09112e5f919b"
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
//!           "caller": "0x1ff8d1cd6caffd14452adefc0a91640a1a80b47b"
//!         },
//!         {
//!           "method": "runtime",
//!           "calldata": [],
//!           "caller": "0x1ff8d1cd6caffd14452adefc0a91640a1a80b47b"
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

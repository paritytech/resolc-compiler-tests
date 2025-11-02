//! {
//!   "modes": [
//!     "Y-",
//!     "E-",
//!     "E+ 0.4",
//!     "E+ 0.5"
//!   ],
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "322332232323"
//!           ],
//!           "caller": "0x9baf3e3b2ec5a1560e26a9b96c0d88ac6bdd9109"
//!         }
//!       ],
//!       "expected": [
//!         "96"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x5e7da045121b7f20ebdc47d126bc30050385fcc7"
//!         }
//!       ],
//!       "expected": [
//!         "96"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "19",
//!             "0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
//!           ],
//!           "caller": "0x09c4d7096a6ca4e33a1f21528148e65629dc3f93"
//!         }
//!       ],
//!       "expected": [
//!         "96"
//!       ]
//!     },
//!     {
//!       "name": "word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32",
//!             "1"
//!           ],
//!           "caller": "0x7a9bd53586751f6b89e525c0daf2c31c0f7c9342"
//!         }
//!       ],
//!       "expected": [
//!         "96"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383",
//!             "12123124235436554647467567567576"
//!           ],
//!           "caller": "0xd98d8aee834060dc79886e59e7a7b6a012514118"
//!         }
//!       ],
//!       "expected_eravm": [
//!         "2415"
//!       ],
//!       "expected_evm": [
//!         "2432"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100",
//!             "2343355345423423423"
//!           ],
//!           "caller": "0xd21fa7cd06e63d2c4eee534e5a509d1ad278c654"
//!         }
//!       ],
//!       "expected": [
//!         "0xF120"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

// For small numbers, msize will be 96, as solidity writes free memory pointer
contract Test {
    function main(uint256 key, uint256 value) external pure returns(uint256 result) {
        assembly {
            mstore(key, value)
            result := msize()
        }
    }
}

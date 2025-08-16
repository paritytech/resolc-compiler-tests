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
//!           "caller": "0x4ee10106A6AC3eA9ECbD21541611964D7fC933f2"
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
//!           "caller": "0x447b9a25DfC6d96B81b2c5De3B2559D684D84F5c"
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
//!           "caller": "0x8cc3838df0a20B4D7DB716743101bB7484479C74"
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
//!           "caller": "0xb8926aa88C697a9599A2D7Ed93E5974DBD8F5DC6"
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
//!           "caller": "0x653eDA54574a193a48E1e83cA008cDC2fF1fBc0a"
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
//!           "caller": "0xc81F6bc044DC78D494FD55B07D6c274368130835"
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

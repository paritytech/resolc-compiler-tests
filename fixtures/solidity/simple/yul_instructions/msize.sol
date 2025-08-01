//! {
//!   "modes": [
//!     "Y-",
//!     "E-",
//!     "I-",
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
//!           "caller": "0x6EFE918DF204E20330978017bd76C1Ac36dE25cc"
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
//!           "caller": "0xe9a1d34Af73bBCe3157dac6847Fc097aABF799c8"
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
//!           "caller": "0x0b5F968C7AB6a40cEB23fc2dc42666bF5CbBE1Ca"
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
//!           "caller": "0x26e63fE3C50B33208f756DA1E133b1cCCf6992A5"
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
//!           "caller": "0x147CB0601E0b1fEfbE6a4112bB6E1d395933fc2D"
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
//!           "caller": "0xD1d74b088771B536fBa285E5f6e946F231fc3F80"
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

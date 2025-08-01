//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xC5229a9Aba6247D2B4ab61954735A972D08A74aF"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x5415c45e539fa1D0E3b81C12e706F4087a04c16C"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105727"
//!           ],
//!           "caller": "0x4BFd618F42bB85EF8D0fCCB64867668D2C320905"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-170141183460469231731687303715884105729"
//!           ],
//!           "caller": "0x75BD57C68d7482697Ae08371bb94BD64f728C443"
//!         }
//!       ],
//!       "expected": [
//!         "170141183460469231731687303715884105727"
//!       ]
//!     },
//!     {
//!       "name": "overflow_negative",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "-180141183460469231731687303715887105728"
//!           ],
//!           "caller": "0x537BF82E36aee20520119eeeA0fe2Cad38FBbf27"
//!         }
//!       ],
//!       "expected": [
//!         "160141183460469231731687303715881105728"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive_minimal",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "170141183460469231731687303715884105728"
//!           ],
//!           "caller": "0xfD7078D12A9D7fdbEF5B24B6C203d59aa55E6D85"
//!         }
//!       ],
//!       "expected": [
//!         "-170141183460469231731687303715884105728"
//!       ]
//!     },
//!     {
//!       "name": "overflow_positive",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "190141183460469231731687303715884105728"
//!           ],
//!           "caller": "0x98f3E259e91391E7ba7d2F2D0E8D60D9c6dB7E84"
//!         }
//!       ],
//!       "expected": [
//!         "-150141183460469231731687303715884105728"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(int256 a) public pure returns(int128) {
        return int128(a);
    }
}

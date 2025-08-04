//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "0 wei",
//!           "caller": "0xCd27e25e1d76210990dB8951cDF6052F38fCb735"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "1 wei",
//!           "caller": "0x6E81B5B0453824EEDe068aC399091C3981DA4184"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "433478394034343 wei",
//!           "caller": "0x276C6fFF636FD0d268b659444d721044cC479121"
//!         }
//!       ],
//!       "expected": [
//!         "433478394034343"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "caller": "0x17459B918e16b07521CD79600489678Fc5e1C912"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffff"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main() external payable returns(uint256 result) {
        assembly {
            result := callvalue()
        }
    }
}

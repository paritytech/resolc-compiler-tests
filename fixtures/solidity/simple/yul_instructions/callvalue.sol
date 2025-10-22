//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "0 wei",
//!           "caller": "0x2e1415d5b982ca74f5077f4f10e228e5d5d25b48"
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
//!           "caller": "0xbbc381fe518d68acc1c817fcd4bcbf814dfb1810"
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
//!           "caller": "0x508eb50fa3bd58b09488a2538b929dee1d15603a"
//!         }
//!       ],
//!       "expected": [
//!         "433478394034343"
//!       ]
//!     },
//!     {
//!       "name": "max",
//!       "ignore": true,
//!       "comment": "Ignored since we don't provide the accounts with this much eth",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "caller": "0xf0de32ae5f068f01016e3748d1f9f009f1f5d9eb"
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
    function main() external payable returns (uint256 result) {
        assembly {
            result := callvalue()
        }
    }
}

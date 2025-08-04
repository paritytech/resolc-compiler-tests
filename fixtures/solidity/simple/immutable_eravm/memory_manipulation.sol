//! {
//!   "modes": [
//!     "Y",
//!     "E+ <=0.8.12",
//!     "E+ >=0.8.15",
//!     "E-",
//!     "I"
//!   ],
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x71Da0439070a75D864CcA843bBe5BDF7D48A95b6"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "2"
//!         ]
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.5;

contract Test {
    uint256 public immutable X;

    constructor() public {
        X = 1;
        assembly {
            mstore(0x80, 2)
        }
    }

    function main() public view returns (uint256) {
        return X;
    }
}

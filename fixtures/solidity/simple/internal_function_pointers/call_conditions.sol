//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "first",
//!           "calldata": [],
//!           "caller": "0x64d5266d56063f56edaaa51ffb955ce6cdb09436"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "second",
//!           "calldata": [],
//!           "caller": "0x90682e55650b3044ae0370a39ff83b9d0fc27506"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    // Function pointer for mathematical operations
    function(uint256, uint256) internal view returns (uint256) operation;

    // Mathematical operations
    function addition(uint256 a, uint256 b) internal pure returns(uint256) {
        return a + b;
    }

    function subtraction(uint256 a, uint256 b) internal pure returns(uint256) {
        return a - b;
    }

    function multiplication(uint256 a, uint256 b) internal pure returns(uint256) {
        return a * b;
    }

    function main(uint256 a, uint256 b, uint256 c) private returns(uint256) {
        // Assigning function pointer based on 'c' value
        if (c > 42) {
            operation = addition;
        } else if (c == 42) {
            operation = subtraction;
        } else {
            operation = multiplication;
        }
        return operation(a, b);
    }

    function first() public returns(uint256) {
        return main(84, 2, 43) + main(23, 23, 42) - main(22, 2, 3);
    }

    function second() public returns(uint256) {
        return main(15, 10, 43) + main(30, 10, 42) - main(3, 1, 3);
    }
}

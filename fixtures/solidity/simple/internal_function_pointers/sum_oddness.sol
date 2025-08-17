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
//!           "caller": "0x48e1b073c40db927db47cf85c2e61895de81ac1c"
//!         }
//!       ],
//!       "expected": [
//!         "5050"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "second",
//!           "calldata": [],
//!           "caller": "0x1d9ff1f8422f6e427c1fc49be5c2d96081ac0512"
//!         }
//!       ],
//!       "expected": [
//!         "1275"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    // Function pointer for odd or even addition
    function(uint256, uint256) internal pure returns (uint256) operation;

    // Functions for odd and even number addition
    function addIfOdd(uint256 i, uint256 result) internal pure returns(uint256) {
        if (i % 2 != 0) {
            return result + i;
        }
        return result;
    }

    function addIfEven(uint256 i, uint256 result) internal pure returns(uint256) {
        if (i % 2 == 0) {
            return result + i;
        }
        return result;
    }

    // Recursive function to perform addition
    function mainRecursive(uint256 i, uint256 a, uint256 result) private returns(uint256) {
        if (i > a) {
            return result;
        }
        result = operation(i, result);
        return mainRecursive(i + 1, a, result);
    }

    function main(uint256 a, bool is_odd) private returns(uint256) {
        // Assign function pointer based on 'is_odd' flag
        if (is_odd) {
            operation = addIfOdd;
        } else {
            operation = addIfEven;
        }
        return mainRecursive(1, a, 0);
    }

    function first() public returns(uint256) {
        return main(100, false) + main(100, true);
    }

    function second() public returns(uint256) {
        return main(50, true) + main(50, false);
    }
}


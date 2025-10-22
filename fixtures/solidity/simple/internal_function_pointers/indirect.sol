//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "calculate",
//!           "calldata": [
//!             "5"
//!           ],
//!           "caller": "0x0e697890a5ce3699fd7b0324478b130bcda392f2"
//!         }
//!       ],
//!       "expected": [
//!         "6"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function (uint) internal pure returns (uint) funcPtr;
    function (uint) internal view returns (uint) indirectFuncPtr;

    constructor() public {
        funcPtr = increment;
        indirectFuncPtr = indirect;
    }

    function indirect(uint num) internal view returns (uint) {
        return funcPtr(num);
    }

    function increment(uint num) internal pure returns (uint) {
        return num + 1;
    }

    function calculate(uint num) public view returns (uint) {
        return indirectFuncPtr(num);
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "setStorage",
//!           "calldata": [
//!             "5",
//!             "11"
//!           ],
//!           "caller": "0x1c534806104a198fb252d2e34480fb18cab36deb"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x1c534806104a198fb252d2e34480fb18cab36deb"
//!         }
//!       ],
//!       "expected": [
//!         "1024"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    uint248 a;
    uint248 b;

    function setStorage(uint256 a, uint256 b) public {
        assembly {
            sstore(0, a)
            sstore(1, b)
        }
    }

    function main(uint248 value) public returns(uint248) {
        return a + quadruple(triple(double(value))) + b;
    }

    function double(uint248 value) public returns(uint248) {
        return value * 2;
    }

    function triple(uint248 value) public returns(uint248) {
        return 3 * value;
    }

    function quadruple(uint248 value) public returns(uint248) {
        return value * 4;
    }
}

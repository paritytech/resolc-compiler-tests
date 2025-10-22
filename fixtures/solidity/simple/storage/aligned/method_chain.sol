//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "instance": "Test",
//!           "calldata": [
//!             "5",
//!             "11"
//!           ],
//!           "caller": "0xbd611b9eec4d0b8e4624f2f908a3c4155eaeb985"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0xbd611b9eec4d0b8e4624f2f908a3c4155eaeb985"
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
    uint256 a;
    uint256 b;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }

    function main(uint248 value) public returns(uint248) {
        return uint248(a) + quadruple(triple(double(value))) + uint248(b);
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

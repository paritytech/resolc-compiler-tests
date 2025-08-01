//! {
//!   "targets": [
//!     "evm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "0x05",
//!             "0x0b"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0x93BDBe2c9f0F5cec59175C51D0a39fAee42A4a6e"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x93BDBe2c9f0F5cec59175C51D0a39fAee42A4a6e"
//!         }
//!       ],
//!       "expected": [
//!         "1024"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0;

contract Test {
    uint256 immutable a;
    uint256 immutable b;

    constructor(uint256 x, uint256 y) public {
        a = x;
        b = y;
    }

    function double(uint256 _value) internal returns(uint256) {
        return _value * 2;
    }

    function triple(uint256 _value) internal returns(uint256) {
        return 3 * _value;
    }

    function quadruple(uint256 _value) internal returns(uint256) {
        return _value * 4;
    }

    function main(uint256 _value) external returns(uint256) {
        return a + quadruple(triple(double(_value))) + b;
    }
}

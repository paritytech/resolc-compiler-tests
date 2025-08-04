//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "#deployer",
//!           "calldata": [
//!             "0x05",
//!             "0x07"
//!           ],
//!           "expected": [
//!             "Test.address"
//!           ],
//!           "caller": "0x3D79C39eE8583720E8e5723Dc1190192D047cE5E"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x3D79C39eE8583720E8e5723Dc1190192D047cE5E"
//!         }
//!       ],
//!       "expected": [
//!         "148"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.5;

contract Test {
    uint256 constant SOMETHING = 42;
    uint256 constant SOMETHING_ELSE = 88;

    struct Data {
        uint256 c;
        uint256 d;
    }

    uint8 immutable a;
    uint8 immutable b;

    constructor(uint8 x, uint8 y) public {
        a = x;
        b = y;
    }

    function inner(Data memory data, uint256 _value, uint8 literal) internal returns(uint256) {
        return ((a + data.c + b + data.d + _value) * literal * SOMETHING - SOMETHING_ELSE) / 1000;
    }

    function main(uint256 _value) external returns(uint256) {
        Data memory data = Data({c: 10, d: 20});

        return inner(data, _value, 42);
    }
}

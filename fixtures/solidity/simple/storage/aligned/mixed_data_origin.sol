//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "storage": {
//!             "Test.address": [
//!               "5",
//!               "7"
//!             ]
//!           },
//!           "caller": "0xA6f5395cA62aa98E9918bfE7D31BeD5DAF2BD2F9"
//!         }
//!       ],
//!       "expected": [
//!         "148"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;
pragma experimental ABIEncoderV2;

contract Test {
    uint248 constant SOMETHING = 42;
    uint248 constant SOMETHING_ELSE = 88;

    struct Data {
        uint248 c;
        uint248 d;
    }

    uint256 a;
    uint256 b;

    function main(uint248 value) public returns(uint248) {
        Data memory data = Data(10, 20);

        return inner(data, value, 42);
    }

    function inner(Data memory data, uint248 value, uint8 literal) public returns(uint248) {
        return ((uint248(a) + data.c + uint248(b) + data.d + value) * uint248(literal) * SOMETHING - SOMETHING_ELSE) / 1000;
    }
}

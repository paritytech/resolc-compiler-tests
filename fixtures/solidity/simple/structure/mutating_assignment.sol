//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "168",
//!             "4"
//!           ],
//!           "caller": "0xd65d814a03aa83c1ca7d0826c6dc8ec69b3a0a45"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;
pragma experimental ABIEncoderV2;

contract Test {
    struct Inner {
        uint8 value;
    }

    struct Data {
        Inner inner;
    }

    function main(Data memory data, uint8 divider) public pure returns(Data memory) {
        data.inner.value /= divider;
        return data;
    }
}

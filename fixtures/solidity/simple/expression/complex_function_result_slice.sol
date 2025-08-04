//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "16"
//!           ],
//!           "caller": "0xF5C9B864B9d794e3E9e22C17f7baD2457636B57E"
//!         }
//!       ],
//!       "expected": [
//!         "64"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    struct Entry1 {
        bool a;
        uint8[2] b;
    }

    struct Entry2 {
        uint8 a;
        uint8[4] b;
    }

    struct Data {
        Entry1 a;
        Entry2 b;
    }

    function foo() private pure returns(Data memory) {
        return Data({
            a: Entry1(false, [8, 9]),
            b: Entry2(1, [2, 3, 4, 5])
        });
    }

    function main(uint8 witness) public pure returns(uint8) {
        return witness * foo().b.b[2];
    }
}

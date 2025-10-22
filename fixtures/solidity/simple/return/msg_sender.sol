//! {
//!   "cases": [
//!     {
//!       "name": "without_argument",
//!       "inputs": [
//!         {
//!           "method": "main()",
//!           "caller": "0x9085c57547cbafa2e109fff60db5978d731336e0",
//!           "calldata": []
//!         }
//!       ],
//!       "expected": [
//!         "0x9085c57547cbafa2e109fff60db5978d731336e0"
//!       ]
//!     },
//!     {
//!       "name": "with_argument",
//!       "inputs": [
//!         {
//!           "method": "main(address)",
//!           "calldata": [
//!             "0xdeadbeef00000000000000000000000000000042"
//!           ],
//!           "caller": "0xf902264f2ae63f5aa4ccb980b2604c1483685fcb"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef00000000000000000000000000000042"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-500/floating-bug-with-a-default-value-for-the-parameter-as-msgsender

pragma solidity >=0.4.16;

contract Test {
    function main(address a) public returns(address) {
        return a;
    }
    function main() external returns(address) {
        return main(msg.sender);
    }
}

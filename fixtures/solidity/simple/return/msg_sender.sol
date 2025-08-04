//! {
//!   "cases": [
//!     {
//!       "name": "without_argument",
//!       "inputs": [
//!         {
//!           "method": "main()",
//!           "caller": "0x2766C2d047462F14975ee478a0E2b28fE491CA01",
//!           "calldata": []
//!         }
//!       ],
//!       "expected": [
//!         "0x2766C2d047462F14975ee478a0E2b28fE491CA01"
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
//!           "caller": "0xDF620F86D0a5E5153cab800e216875bCcd8d5e8B"
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

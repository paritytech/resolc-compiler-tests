//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xb41728f81b765f71c514dfa7b0948dff9f584c3c"
//!         }
//!       ],
//!       "expected": [
//!         "0xb41728f81b765f71c514dfa7b0948dff9f584c3c"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    function main() public returns (address) {
        address tx_origin = tx.origin;
        return tx_origin;
    }
}

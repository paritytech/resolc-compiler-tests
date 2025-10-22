//! {
//!   "cases": [
//!     {
//!       "name": "false_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x84ac512933fd122933ab02502052db76b53ee59a"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "false_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x3132918a3ecb2eba30ed58e8dc7dc1427f0d6097"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "true_false",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x2ec950ff79147e05118257b341c2055a0300f028"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "true_true",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0xd13b256d1f258e88e06c4caec898f3452fa4e02f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(bool a, bool b) public pure returns(bool) {
        return a || b;
    }
}

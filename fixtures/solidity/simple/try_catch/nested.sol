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
//!           "caller": "0xdbdbae304fba6b93a9cdc90326a5fadc1c2a1489"
//!         }
//!       ],
//!       "expected": [
//!         "2"
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
//!           "caller": "0x9988bfd443d31a48a1666d40790ee9949b9e95d5"
//!         }
//!       ],
//!       "expected": [
//!         "2"
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
//!           "caller": "0x16c3dca110fe5d58fc36af4fed62f57cd75ba009"
//!         }
//!       ],
//!       "expected": [
//!         "43"
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
//!           "caller": "0x1a1364741a50c70b03a1d97b1447b88e64b99315"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(uint gate1, uint gate2) view public returns(uint result) {
        try this.c1(gate1) returns(uint result1) {
            result += result1;
            try this.c2(gate2) returns(uint result2) {
                result += result2;
            } catch {
                result += 1;
            }
        } catch {
            result += 2;
        }
    }

    function c1(uint gate) pure public returns(uint) {
        if (gate == 0) {
            revert();
        }
        return 42;
    }

    function c2(uint gate) pure public returns(uint) {
        if (gate == 0) {
            revert();
        }
        return 84;
    }
}

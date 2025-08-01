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
//!           "caller": "0x9339681642F3784ab2A15345376dc0f951e709c5"
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
//!           "caller": "0x76FEA321027EB001E174385Bfd0082879B1e5703"
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
//!           "caller": "0x217C61D3AcFCcF486449d5546BF295b42d795BEc"
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
//!           "caller": "0x7BB18376dC84cCFC4C4c9Fe8367Bf306a213C43C"
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

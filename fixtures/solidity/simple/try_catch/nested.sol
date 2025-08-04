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
//!           "caller": "0x56e0E54fa9ceB8698e84643F7a643B6F22a448D8"
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
//!           "caller": "0xC810cf76247717308F03B0AcD5784c380f54451A"
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
//!           "caller": "0x6B20cb9715C7390b04C977F9724bA298Fc5BB0f8"
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
//!           "caller": "0xBe800f8836754326cAdBefe94dA461D16Cc72164"
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

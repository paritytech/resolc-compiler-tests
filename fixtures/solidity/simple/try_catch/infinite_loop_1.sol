//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x8af8F406A7D5d08711288fb5ce48e7e032d6381c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

// Report https://linear.app/matterlabs/issue/CPR-952/statements-inside-loops-stack-overflow-error-in-the-zksolc

pragma solidity >=0.6.0;

contract Test {
    bool private testvar = true;

    function main() external returns (bool) {
        testvar = !testvar;
        return testvar;
    }

    function trier1bug() public {
        while (testvar) {
            testvar = !testvar;

            try this.main() returns (bool s) {
                if (s == testvar) break;
            } catch {  }
        }
    }
}

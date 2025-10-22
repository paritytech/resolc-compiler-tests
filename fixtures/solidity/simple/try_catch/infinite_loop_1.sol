//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0xdbdbae304fba6b93a9cdc90326a5fadc1c2a1489"
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

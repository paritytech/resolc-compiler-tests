//! {
//!   "modes": [
//!     "Y",
//!     "E"
//!   ],
//!   "cases": [
//!     {
//!       "name": "recursive_function",
//!       "inputs": [
//!         {
//!           "method": "recursive_function",
//!           "calldata": [],
//!           "caller": "0x45d37ef12d4574c58c1690aeee02a57cf3556e70"
//!         }
//!       ],
//!       "expected": [
//!         "5050"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function recursive_function() external {
        assembly {
            function sum(n) -> ret {
                if eq(n, 0) {
                    ret := 0
                    leave
                }
                ret := add(
                    sum(sub(n, 1)),
                    n
                )
            }
            mstore(0, sum(100)) // 1 + 2 + ... + 100 = 100 * (1 + 100) / 2 = 5050
            return(0, 32)
        }
    }
}

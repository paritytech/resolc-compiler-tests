//! {
//!   "modes": [
//!     "Y =0.4.21",
//!     "E =0.4.21"
//!   ],
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x42e0d526bf25f0fafaeca8b43da6fb031cc7a48d"
//!         }
//!       ],
//!       "expected": [
//!         {
//!           "compiler_version": ">=0.8",
//!           "return_data": [
//!             "0x4e487b7100000000000000000000000000000000000000000000000000000000",
//!             "0x0000005100000000000000000000000000000000000000000000000000000000"
//!           ],
//!           "exception": true
//!         },
//!         {
//!           "compiler_version": "<=0.7",
//!           "return_data": [],
//!           "exception": true
//!         }
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity <=0.4.21;

contract C {
    function() internal storedFn;

    bool flag;

    function C() public {
        if (!flag) {
            flag = true;
            function() internal invalid;
            storedFn = invalid;
            storedFn();
        }
    }

    function f() public {}
}

contract Test {
    function f() public {
        new C();
    }
}
// ====
// compileToEwasm: also
// ----
// f() -> FAILURE, hex"4e487b71", 0x51

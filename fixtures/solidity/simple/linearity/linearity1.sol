//! {
//!   "cases": [
//!     {
//!       "name": "f",
//!       "inputs": [
//!         {
//!           "method": "f",
//!           "calldata": [],
//!           "caller": "0x811da72aca31e56f770fc33df0e45fd08720e157"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.12;

contract Test {
    address public a1 = a2;
    address public a2 = address(0xff);

    function f() public returns (uint256) {
        assert(a1 == address(0));
        return 0;
    }
}

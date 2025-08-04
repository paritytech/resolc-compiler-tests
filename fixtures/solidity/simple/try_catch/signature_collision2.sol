//! {
//!   "cases": [
//!     {
//!       "name": "main",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x4FA3b0E3AB9EE4e1CAc6B83b1f07405D8e5BE71c"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

interface ITest2 {
    function transfer(address to, uint256 balance) external;
}

contract Test {
    Test2 ins;

    constructor() public {
        ins = new Test2();
    }

    function main() public returns (bool) {
        try ITest2(address(ins)).transfer(msg.sender, 0) {
            return true;
        } catch {
            return false;
        }
    }
}

contract Test2 {
    function join_tg_invmru_haha_fd06787(address, bool) public {}
}

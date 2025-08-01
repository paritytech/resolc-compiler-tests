//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x6EEB6703e056C514516Db4b781344A14781b5Ebb"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.19;

contract Test {
    function main() public {
        this.f();
        bytes32 result = keccak256("abc");
        assembly {
            if iszero(eq(returndatasize(), 64)) {
                revert(0, 0)
            }
            returndatacopy(0, 0, 64)
            if iszero(and(
                eq(mload(0), 11),
                eq(mload(32), 12)
            )) {
                revert(0, 0)
            }
        }
    }

    function f() external pure returns(uint256[2] memory) {
        return [uint256(11), uint256(12)];
    }
}

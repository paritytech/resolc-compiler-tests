//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x6ecd30c83a756bae1c22440841e0f90b587c7d79"
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
        assembly {
            let result := coinbase()
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

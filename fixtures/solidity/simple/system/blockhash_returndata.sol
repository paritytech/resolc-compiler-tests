//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x1dE2D3D730633dE1Fb58B5cb5a14a9b40eE6c1A4"
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
            let result := blockhash(sub(number(), 1))
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

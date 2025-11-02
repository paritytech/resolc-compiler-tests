//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "caller": "0x949e63296823174a1d244ffbc90ec87d75c40936"
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
            let result := gaslimit()
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

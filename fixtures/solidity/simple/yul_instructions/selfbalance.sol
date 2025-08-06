//! {
//!     "cases": [
//!         {
//!             "name": "zero",
//!             "inputs": [
//!                 {
//!                     "method": "main",
//!                     "calldata": [],
//!                     "value": "0 wei",
//!                     "caller": "0xa64763Ec33e53801DE813801B7D40F9e2f4256C2"
//!                 }
//!             ],
//!             "expected": [
//!                 "0"
//!             ]
//!         },
//!         {
//!             "name": "one",
//!             "inputs": [
//!                 {
//!                     "method": "main",
//!                     "calldata": [],
//!                     "value": "1 wei",
//!                     "caller": "0xF0C6b7F5fC6CBc1A351e24FE8Fc4c76B775917B8"
//!                 }
//!             ],
//!             "expected": [
//!                 "1"
//!             ]
//!         },
//!         {
//!             "name": "ordinar",
//!             "inputs": [
//!                 {
//!                     "method": "main",
//!                     "calldata": [],
//!                     "value": "433478394034343 wei",
//!                     "caller": "0x6cC348968f4609B9246C37104D35072bEE5E784d"
//!                 }
//!             ],
//!             "expected": [
//!                 "433478394034343"
//!             ]
//!         },
//!         {
//!             "name": "2_in_128_minus_one",
//!             "ignore": true,
//!             "comment": "Ignored since we don't provide the accounts with this much eth",
//!             "inputs": [
//!                 {
//!                     "method": "main",
//!                     "calldata": [],
//!                     "value": "340282366920938463463374607431768211455 wei",
//!                     "caller": "0x084a0532d2e2983A5Ab7D98647984Fd6A0ae0403"
//!                 }
//!             ],
//!             "expected": [
//!                 "0xffffffffffffffffffffffffffffffff"
//!             ]
//!         },
//!         {
//!             "name": "2_in_128",
//!             "ignore": true,
//!             "comment": "Ignored since we don't provide the accounts with this much eth",
//!             "inputs": [
//!                 {
//!                     "method": "main",
//!                     "calldata": [],
//!                     "value": "340282366920938463463374607431768211455 wei",
//!                     "expected": [
//!                         "0xffffffffffffffffffffffffffffffff"
//!                     ],
//!                     "caller": "0x40Cc521351c72359FcBEc131aDEbed796B4A264E"
//!                 },
//!                 {
//!                     "method": "main",
//!                     "calldata": [],
//!                     "value": "1 wei",
//!                     "caller": "0x40Cc521351c72359FcBEc131aDEbed796B4A264E"
//!                 }
//!             ],
//!             "expected": [
//!                 "0x100000000000000000000000000000000"
//!             ]
//!         },
//!         {
//!             "name": "ordinar_bigger_2_in_128",
//!             "ignore": true,
//!             "comment": "Ignored since we don't provide the accounts with this much eth",
//!             "inputs": [
//!                 {
//!                     "method": "main",
//!                     "calldata": [],
//!                     "value": "340282366920938463463374607431768211455 wei",
//!                     "expected": [
//!                         "0xffffffffffffffffffffffffffffffff"
//!                     ],
//!                     "caller": "0x554D75e7Fa1247626e4cbE5d9f6844E7374cB740"
//!                 },
//!                 {
//!                     "method": "main",
//!                     "calldata": [],
//!                     "value": "48384899813922913922990329232 wei",
//!                     "caller": "0x554D75e7Fa1247626e4cbE5d9f6844E7374cB740"
//!                 }
//!             ],
//!             "expected": [
//!                 "0x1000000009C570D12AFFBBF971E8DCD8F"
//!             ]
//!         }
//!     ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.5.14;

contract Test {
    function main() external payable returns (uint256 result) {
        assembly {
            result := selfbalance()
        }
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "0 wei",
//!           "caller": "0x24ec2c95538152df4cfbc635321520782cc45f8b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "1 wei",
//!           "caller": "0xe26d57f7aebb68bf6c207932190d775ab5b7349a"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "433478394034343 wei",
//!           "caller": "0x95dc16ca313c99c72b661bb1a1b78c357d301b8f"
//!         }
//!       ],
//!       "expected": [
//!         "433478394034343"
//!       ]
//!     },
//!     {
//!       "name": "2_in_128_minus_one",
//!       "ignore": true,
//!       "comment": "Ignored since we don't provide the accounts with this much eth",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "caller": "0xb8e1a5f08932c176a8c4e6b85cafa4e559003845"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "2_in_128",
//!       "ignore": true,
//!       "comment": "Ignored since we don't provide the accounts with this much eth",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "expected": [
//!             "0xffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xaa7c96af28a6398c5931c737046a9910398fca5f"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "1 wei",
//!           "caller": "0xaa7c96af28a6398c5931c737046a9910398fca5f"
//!         }
//!       ],
//!       "expected": [
//!         "0x100000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_128",
//!       "ignore": true,
//!       "comment": "Ignored since we don't provide the accounts with this much eth",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "expected": [
//!             "0xffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x636551ba514f43f41f0fa37a35711172133cc0e6"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "48384899813922913922990329232 wei",
//!           "caller": "0x636551ba514f43f41f0fa37a35711172133cc0e6"
//!         }
//!       ],
//!       "expected": [
//!         "0x1000000009C570D12AFFBBF971E8DCD8F"
//!       ]
//!     }
//!   ]
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

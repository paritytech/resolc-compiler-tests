//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "0 wei",
//!           "caller": "0x712ADF204667cA9C06113Bdf9Abc39Db1B3CDF30"
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
//!           "caller": "0x7d3b5789B5e478233b74487406F6E2Dc5A58D2C5"
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
//!           "caller": "0xE3369131c2a3e00fDa6dddEDa7Ab00F20101f7d5"
//!         }
//!       ],
//!       "expected": [
//!         "433478394034343"
//!       ]
//!     },
//!     {
//!       "name": "2_in_128_minus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "caller": "0x8cB81104a2eE4C0F0C4CC3E7D9b329B2BCC27E65"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "2_in_128",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "expected": [
//!             "0xffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xCc76FF669E9C64BE4958476D4ccc74B8b440A475"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "1 wei",
//!           "caller": "0xCc76FF669E9C64BE4958476D4ccc74B8b440A475"
//!         }
//!       ],
//!       "expected": [
//!         "0x100000000000000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_2_in_128",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "expected": [
//!             "0xffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xBff9Aa1DCDe453FACbfcC4854eA667beD8831FD9"
//!         },
//!         {
//!           "method": "main",
//!           "calldata": [],
//!           "value": "48384899813922913922990329232 wei",
//!           "caller": "0xBff9Aa1DCDe453FACbfcC4854eA667beD8831FD9"
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
    function main() external payable returns(uint256 result) {
        assembly {
            result := selfbalance()
        }
    }
}

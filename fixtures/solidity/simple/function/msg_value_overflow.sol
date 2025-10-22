//! {
//!   "cases": [
//!     {
//!       "name": "default",
//!       "ignore": true,
//!       "comment": "This test requires more Eth value than we can support in revive",
//!       "inputs": [
//!         {
//!           "method": "entry",
//!           "calldata": [
//!             "0x100000000000000000000000000000001"
//!           ],
//!           "value": "340282366920938463463374607431768211455 wei",
//!           "caller": "0xa8adad73b71211f29511dfb2be96561311c80e00"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": []
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2;

contract Test {
    function entry(uint256 value) external payable returns (uint256) {
        return this.main{value: value}();
    }

    function main() external payable returns (uint256) {
        return msg.value;
    }
}

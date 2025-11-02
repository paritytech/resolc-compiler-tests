//! {
//!   "cases": [
//!     {
//!       "name": "first",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42"
//!           ],
//!           "caller": "0x1263b82283b515a9720d07782f916bd0cbe40439"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "second",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "64"
//!           ],
//!           "caller": "0xb0c741a0d76e1f07fb613bb4ab310469cd152114"
//!         }
//!       ],
//!       "expected": [
//!         "64"
//!       ]
//!     },
//!     {
//!       "name": "third",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "65535"
//!           ],
//!           "caller": "0xa3258c7d453330c390474919261f63d7391d1b24"
//!         }
//!       ],
//!       "expected": [
//!         "65535"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;
pragma experimental ABIEncoderV2;

contract Test {
    struct Data {
        uint256 a;
    }

    function _new(uint256 a) private pure returns(Data memory) {
        return Data(a);
    }

    function main(uint256 witness) public pure returns(uint256) {
        return _new(witness).a;
    }
}

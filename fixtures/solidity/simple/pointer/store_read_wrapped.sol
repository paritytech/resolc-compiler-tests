//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "84",
//!             "21"
//!           ],
//!           "caller": "0x103f185Ee9759314a8463Ab641a2a470B118a48D"
//!         }
//!       ],
//!       "expected": [
//!         "21"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "42",
//!             "42"
//!           ],
//!           "caller": "0xF2b7ba9b827C1EC367604Adc63E1f45D32C5eeB9"
//!         }
//!       ],
//!       "expected": [
//!         "42"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "21",
//!             "84"
//!           ],
//!           "caller": "0xa64Eb503Ff9519dF29a9E5bC115Fc9a63f275C42"
//!         }
//!       ],
//!       "expected": [
//!         "84"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    struct Wrapper {
        uint16 pointer;
    }

    function main(uint16 _address, uint8 value) public pure returns(uint8 result) {
        Wrapper memory wrapper = Wrapper(_address * 32);
        assembly {
            mstore(mload(wrapper), value)
            result := mload(mload(wrapper))
        }
    }
}
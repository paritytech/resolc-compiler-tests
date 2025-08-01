//! {
//!   "cases": [
//!     {
//!       "name": "one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "5",
//!             "42",
//!             "10",
//!             "21",
//!             "15",
//!             "63"
//!           ],
//!           "caller": "0xD315285d6C8FE3e11a6B3113a14cbe204Cdf05b9"
//!         }
//!       ],
//!       "expected": [
//!         "126"
//!       ]
//!     },
//!     {
//!       "name": "two",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "101",
//!             "2",
//!             "102",
//!             "4",
//!             "103",
//!             "6"
//!           ],
//!           "caller": "0xb7562376D206dbA77EFd0874601f17d52Ff70E81"
//!         }
//!       ],
//!       "expected": [
//!         "12"
//!       ]
//!     },
//!     {
//!       "name": "three",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "43",
//!             "1",
//!             "42",
//!             "1",
//!             "41",
//!             "1"
//!           ],
//!           "caller": "0x7cbf7E4098e894FCD93DA17E4D9ac4771F4B3D3c"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(
        uint16 address1,
        uint8 value1,
        uint16 address2,
        uint8 value2,
        uint16 address3,
        uint8 value3
    )
        public
        pure
        returns(uint8 result)
    {
        uint16 pointer1 = address1 * 32;
        assembly {
            mstore(pointer1, value1)
        }
        
        uint16 pointer2 = address2 * 32;
        assembly {
            mstore(pointer2, value2)
        }
        
        uint16 pointer3 = address3 * 32;
        assembly {
            mstore(pointer3, value3)
        }

        assembly {
            result := add(mload(pointer1), add(mload(pointer2), mload(pointer3)))
        }
    }
}
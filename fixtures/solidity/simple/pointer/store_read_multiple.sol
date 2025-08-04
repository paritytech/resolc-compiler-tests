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
//!           "caller": "0xBdEe868319388B242C3C54E4c5989A0d0d8244BA"
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
//!           "caller": "0xDb56A940fE02C8bd8B431c28c168eE205d8f4B9B"
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
//!           "caller": "0x81297Dd654C91A46c6AF3ddbE921aeee864B52a2"
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
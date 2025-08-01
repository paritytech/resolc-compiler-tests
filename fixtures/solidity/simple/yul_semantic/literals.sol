//! {
//!   "cases": [
//!     {
//!       "name": "decimal",
//!       "inputs": [
//!         {
//!           "method": "decimal",
//!           "calldata": [],
//!           "caller": "0x18121a7b9f795aF2F22f5b4189A78C9f4D53371e"
//!         }
//!       ],
//!       "expected": [
//!         "4024342343240230"
//!       ]
//!     },
//!     {
//!       "name": "hexadecimal",
//!       "inputs": [
//!         {
//!           "method": "hexadecimal",
//!           "calldata": [],
//!           "caller": "0x2227e43f711e12756f70E69c45DC977EF72aA8Ce"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "true",
//!       "inputs": [
//!         {
//!           "method": "_true",
//!           "calldata": [],
//!           "caller": "0xe663b89D03407f16806b3100226549E4780004b5"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "false",
//!       "inputs": [
//!         {
//!           "method": "_false",
//!           "calldata": [],
//!           "caller": "0x538d0C1E8b9A03021a614c6D8a0a5A21E3212a0B"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "string",
//!       "inputs": [
//!         {
//!           "method": "_string",
//!           "calldata": [],
//!           "caller": "0xD79fe465c6C34Bc026018487D87AC1aDc9d0D430"
//!         }
//!       ],
//!       "expected": [
//!         "0x6a73646a736a646a6431323331325c2f2212e2888e0000000000000000000000"
//!       ]
//!     },
//!     {
//!       "name": "hex",
//!       "inputs": [
//!         {
//!           "method": "_hex",
//!           "calldata": [],
//!           "caller": "0x674B4080707E8Ad222Bbc8ea095bC7826c4f5F7f"
//!         }
//!       ],
//!       "expected": [
//!         "0x0012340000000000000000000000000000000000000000000000000000000000"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

contract Test {
    function decimal() external pure {
        assembly {
            mstore(0, 4024342343240230)
            return(0, 32)
        }
    }

    function hexadecimal() external pure {
        assembly {
            mstore(0, 0x00000000000deadbeef)
            return(0, 32)
        }
    }

    function _true() external pure {
        assembly {
            mstore(0, true)
            return(0, 32)
        }
    }

    function _false() external pure {
        assembly {
            mstore(0, false)
            return(0, 32)
        }
    }

    function _string() external pure {
        assembly {
            mstore(0, "jsdjsjdjd\
12312\\/\"\x12\u220E")
            return(0, 32)
        }
    }

    function _hex() external pure {
        assembly {
            mstore(0, hex"001234")
            return(0, 32)
        }
    }
}
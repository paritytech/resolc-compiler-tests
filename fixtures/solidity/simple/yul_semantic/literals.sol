//! {
//!   "cases": [
//!     {
//!       "name": "decimal",
//!       "inputs": [
//!         {
//!           "method": "decimal",
//!           "calldata": [],
//!           "caller": "0x8333770698f306491ece5462ee767e478f40ceed"
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
//!           "caller": "0xaa58ede96eabae33658adf82760aeaaecfa1a7ed"
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
//!           "caller": "0x2172d06bd4ad29e0879c7736c1f8930cb49026db"
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
//!           "caller": "0x60d1cf4897d7b964635712d5ec03b6a2b1dc3633"
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
//!           "caller": "0x3b3735104a283059084452742d6180a4a214d931"
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
//!           "caller": "0x8e70566320ef55f124fbdc3a18c2f08994b3829a"
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
//! {
//!   "cases": [
//!     {
//!       "name": "decimal",
//!       "inputs": [
//!         {
//!           "method": "decimal",
//!           "calldata": [],
//!           "caller": "0xbEE756576Eb2205B3a851246076FCB3A39F88539"
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
//!           "caller": "0xce299c126416135cd154097ADb8f25C3b2F6c75A"
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
//!           "caller": "0x5688372F894705901dBd51ec99897006b62a2c58"
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
//!           "caller": "0x2faC2067A64e55045FBFb6fff765dE3e9e7254F3"
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
//!           "caller": "0xEe1a514481E470291980E42b952780064f535E5f"
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
//!           "caller": "0xDCa31c8ea337eA95d4c4184E3Cd8F1a80394AA77"
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
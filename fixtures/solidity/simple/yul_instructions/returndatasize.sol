//! {
//!   "cases": [
//!     {
//!       "name": "zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0x7e1A2C15EFf975ebd54347A15f1e3F03B17CeD5B"
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
//!           "calldata": [
//!             "1"
//!           ],
//!           "caller": "0x78e9244D9871f9A9aB0988bE556Ae1a2232C3E80"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "small_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "19"
//!           ],
//!           "caller": "0xf5E6384505B1A7587184fA57a8123169a481Ca85"
//!         }
//!       ],
//!       "expected": [
//!         "19"
//!       ]
//!     },
//!     {
//!       "name": "word",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "32"
//!           ],
//!           "caller": "0x5de966AA9EC4AdE35a171052D56FF0D3d03C551C"
//!         }
//!       ],
//!       "expected": [
//!         "32"
//!       ]
//!     },
//!     {
//!       "name": "ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "2383"
//!           ],
//!           "caller": "0xa22CA8Aaf575A8250a01747B21b6A386c27aB11c"
//!         }
//!       ],
//!       "expected": [
//!         "2383"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_words",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xF100"
//!           ],
//!           "caller": "0xcE674AA1Ed05766a3F131b35a97Aa704E110a718"
//!         }
//!       ],
//!       "expected": [
//!         "0xF100"
//!       ]
//!     },
//!     {
//!       "name": "initial",
//!       "inputs": [
//!         {
//!           "method": "initial",
//!           "calldata": [
//!             "0"
//!           ],
//!           "caller": "0xFdC784919BE6f118A6C4Cc293E8085724ca0a849"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "overwrite_smaller",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "300",
//!             "200"
//!           ],
//!           "caller": "0x68dfA91B3F53d6d84985c6a95aC37E5450DD571b"
//!         }
//!       ],
//!       "expected": [
//!         "200"
//!       ]
//!     },
//!     {
//!       "name": "overwrite_equals",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "1233",
//!             "1233"
//!           ],
//!           "caller": "0x28CEb15011AF2386d740D9356348083539860d4f"
//!         }
//!       ],
//!       "expected": [
//!         "1233"
//!       ]
//!     },
//!     {
//!       "name": "overwrite_bigger",
//!       "inputs": [
//!         {
//!           "method": "overwrite",
//!           "calldata": [
//!             "0",
//!             "5"
//!           ],
//!           "caller": "0x3bAE8b60c4EaE965970955ea6A8f61CC4f3257D1"
//!         }
//!       ],
//!       "expected": [
//!         "5"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function main(uint256 len) external returns(uint256 result) {
        assembly {
            mstore(0, len)
            pop(call(gas(), address(), 0, 0, 32, 0, 0))
            result := returndatasize()
        }
    }

    function initial() external returns(uint256 result) {
        assembly {
            result := returndatasize()
        }
    }

    function overwrite(uint256 len1, uint256 len2) external returns(uint256 result) {
        assembly {
            mstore(0, len1)
            pop(call(gas(), address(), 0, 0, 32, 0, 0))
            mstore(0, len2)
            pop(call(gas(), address(), 0, 0, 32, 0, 0))
            result := returndatasize()
        }
    }

    fallback() external {
        assembly {
            let len := calldataload(0)
            return(0, len)
        }
    }
}

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
//!           "caller": "0xd55b216d3730162045ef30d6e427441eb3a3c816"
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
//!           "caller": "0x703f4c886e4683874e0b6084ae8b09224b64a12d"
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
//!           "caller": "0x450bad301bae190b066c914f4633c882772bf139"
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
//!           "caller": "0xa5dc38b5fa26effa91ae8b8ba820070bb1ad1c16"
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
//!           "caller": "0x0d166f31591c8a97ed5870cf09b93c29a0ac87f1"
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
//!           "caller": "0x57ac9524462d3ab719acf9c46044563a3ee3fac7"
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
//!           "caller": "0xdec97bef048dfc0c4ac65fae7bc22061f3a71d17"
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
//!           "caller": "0xf91a0e016ed4ecf3e9b61a197a16f25e2ac98bbc"
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
//!           "caller": "0xe93979a015622e604fb5d590bc8a8cad9e334e87"
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
//!           "caller": "0xe1b8fe80ead507c311a38b9ec0a8c081f598b59c"
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

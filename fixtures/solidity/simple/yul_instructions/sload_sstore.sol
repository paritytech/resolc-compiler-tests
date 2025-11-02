//! {
//!   "cases": [
//!     {
//!       "name": "zero_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x4a7a5c6491f6cf67d1271636fe2187ad87c79be0"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "zero_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x3c5cde9f46b2dca6eb267a7807e9d60b0c2a17e2"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "one_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x0ea9a36c5b888a348b59d9b56eb5a9e33aa264a8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x725d327818161e0b4c6cca5b8b1567d2a40b5b86"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "zero_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "433478394034343"
//!           ],
//!           "caller": "0x340ab352f094815d48d0e599d83279cf960a90ce"
//!         }
//!       ],
//!       "expected": [
//!         "433478394034343"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "0"
//!           ],
//!           "caller": "0x2851ce82a2d3bbad809950e85562f3406aadc69b"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "433478394034343"
//!           ],
//!           "caller": "0xd1bdbe4c42b57cac5847f2f192e2caf8eef14791"
//!         }
//!       ],
//!       "expected": [
//!         "433478394034343"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "121563127839120",
//!             "1"
//!           ],
//!           "caller": "0x749c6ac9a240a39aea1c0d31eabebb5d59e2b657"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "34892894892389893892438928348989389893234",
//!             "23489894892384898293893284839842384382388438438"
//!           ],
//!           "caller": "0x811a678d2c0edbc855ca85dbdff4d75596cd59f1"
//!         }
//!       ],
//!       "expected": [
//!         "23489894892384898293893284839842384382388438438"
//!       ]
//!     },
//!     {
//!       "name": "zero_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xcaee10e8a3fbd167d36d8eec6507b663dc726574"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "max_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0"
//!           ],
//!           "caller": "0x9f7d30bee816fcfe316db3ed0ba4e9c53b381e2f"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "one_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "1",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0xa73ebb4015b3f0c28864e714f2078f209118cd7a"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "max_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "1"
//!           ],
//!           "caller": "0x8279beb4ca0400a5b96a541f0ae0a702b3bb3e35"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "7437834752357434334343423343443375834785783474",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x0c379beeda5fcac96d4b8d85f1cf156db873897b"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "max_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "23784273472384723848213821342323233223"
//!           ],
//!           "caller": "0x15f5d079707f51705bb7f74d00227852c378538f"
//!         }
//!       ],
//!       "expected": [
//!         "23784273472384723848213821342323233223"
//!       ]
//!     },
//!     {
//!       "name": "max_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff",
//!             "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!           ],
//!           "caller": "0x7cd1501c3d22e1a230ce10650807b93143d0a782"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b) external returns(uint256 result) {
        assembly {
            sstore(a, b)
            result := sload(a)
        }
    }
}

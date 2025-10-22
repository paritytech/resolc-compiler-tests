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
//!           "caller": "0xf767268d86a3829739f2fd0d121bbb18062ff703"
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
//!           "caller": "0x7c49eeb2e3ce022315c766f3894fef3738cb68b7"
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
//!           "caller": "0x30e6d72d759e629b985016eb7bc7c88b4cc29289"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x517cad34d8d3dd1b28d6fcbc5f0500dd5311860d"
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
//!           "caller": "0x6d9a9df4043ab5cd2886ec91a9e987a5c00d321f"
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
//!           "caller": "0xd2e69e3b857aeb3c4fa84a7ca5977adda14d7be6"
//!         }
//!       ],
//!       "expected": [
//!         "121563127839120"
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
//!           "caller": "0x46ab90928e0601dbc4cf886bd111dc1240d0a0c1"
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
//!           "caller": "0x6b16720578590dd254ffaa75a6a5d474fbfa63ba"
//!         }
//!       ],
//!       "expected": [
//!         "121563127839121"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xE0281C82903B3293902E82845FF823834309A8F239982392328448AB42789DA8",
//!             "0xA80185C2323AA131233FED325FF823834336742387428823823238FCAD223AB4"
//!           ],
//!           "caller": "0xadbde0c7ac71e61dda2b8d8dc1190ec483a5e4a6"
//!         }
//!       ],
//!       "expected": [
//!         "0xe8299dc2b23bb3b3b33fefb65ff82383433ffcf3bfdaabb3b2b678ffef7abfbc"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x67AC08676F781278AA823890BC392384382FE19082382834A8237678CC128912",
//!             "0x67AC08676F781278AA823890BC392384382FE19082382834A8237678CC128912"
//!           ],
//!           "caller": "0x310bf8f9e0ce16061460fd78a6440131a4be98e9"
//!         }
//!       ],
//!       "expected": [
//!         "0x67AC08676F781278AA823890BC392384382FE19082382834A8237678CC128912"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xfafffffffffffffffffffffffffffffffffffffffffffffffffffffff4ffffff",
//!             "0x050000000000000000000000000000000000000000000000000000000b000000"
//!           ],
//!           "caller": "0xefc2cfeeb570c2614a9b2bef4038c3c428a6fbf0"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
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
//!           "caller": "0x04b36263cf5b7b9fa16a4b7b9c61d91dc52ea738"
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
//!           "caller": "0xe7b47c37d29cfd01ff9be39997649748135b0a0b"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
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
//!           "caller": "0x6e364fc20a24b08f6f4890a808773d5c7fc155b5"
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
//!           "caller": "0x1701f63a1aa25df5afa154e976d6d6ed56c555e2"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
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
//!           "caller": "0x035f528f379a05d4d616a7e116984e840797ca06"
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
//!           "caller": "0xd378ab74e9f30016af9c74ca64c81d8122e961b8"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
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
//!           "caller": "0xc30763f1b6aaecdf9aa2342388863ebe68c26f21"
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
    function main(uint256 a, uint256 b) external pure returns(uint256 result) {
        assembly {
            result := or(a, b)
        }
    }
}

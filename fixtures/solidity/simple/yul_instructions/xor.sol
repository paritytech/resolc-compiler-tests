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
//!           "caller": "0xf339e452c492dccbcdca8886f20bac76e3d634e4"
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
//!           "caller": "0x641300f27b714d20194a22289614f04978cb49e9"
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
//!           "caller": "0x4c75e7949d0641532b531b489c88b1b1345aa1e7"
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
//!           "caller": "0xa6916cd8c8ea6346ceb2f0cccc473ac419dec651"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x65c41a12af69bfc1e95769f2f96e5c1f09ab8f70"
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
//!           "caller": "0xe86353aac9a3cb00ed1251eb4343eab773048f06"
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
//!           "caller": "0x8bb894b872713c2430bd7975af2935c2c897e7d3"
//!         }
//!       ],
//!       "expected": [
//!         "433478394034342"
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
//!           "caller": "0x9759409eda5e3cb77b1b938041f7870321eee1e3"
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
//!           "caller": "0xeeeafdbc0c004ce5795d25e5af89ba1a152200b7"
//!         }
//!       ],
//!       "expected": [
//!         "0x48299940a20193a2b3116fb600000000003fdcd1bedaabb1b0b67057ef5aa71c"
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
//!           "caller": "0xe22c2ad4fb4bbac4181f08c5e64748d00b15675d"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0x459c7685f88fc1a01b4da562c6c2361ac3c49a6e"
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
//!           "caller": "0x5c075e0a7a65d442fa240c0c72f8f9f05b83586d"
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
//!           "caller": "0xec143b23a5c57c245ed455a6209a1d5ae20965a0"
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
//!           "caller": "0x9d4d13b1fb6d775a71ea7636e10b0d9a568c408b"
//!         }
//!       ],
//!       "expected": [
//!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
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
//!           "caller": "0xbf69324e483be070e7a826a05875e3368ec17ea5"
//!         }
//!       ],
//!       "expected": [
//!         "0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe"
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
//!           "caller": "0x250372e995bb8c86ffb62a128d42b028814cecf0"
//!         }
//!       ],
//!       "expected": [
//!         "0xfffffffffffffffffffffffffeb279d82a671462e39200afae5f1572f93de14d"
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
//!           "caller": "0x9ef62dcdfd86d79e00e4912a07dde43b2da53719"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffee1b50c7fa1013dbaed1bd15844d2e38"
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
//!           "caller": "0xc812cb6457370c647aa5e4e0568c0fe8f8c8006e"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b) external pure returns(uint256 result) {
        assembly {
            result := xor(a, b)
        }
    }
}

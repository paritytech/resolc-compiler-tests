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
//!           "caller": "0x54DA432e71D8A26BB11ba92334cCA0D4290908fB"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x0a43077507E8B364138D4BFB7a7b85667075344B"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xe0513BD8e403E646D92c0F66c7D325dB5d3Fba0e"
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
//!           "caller": "0x98c96E681944B661D99a8C6c8d2E23f09D1B499d"
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
//!           "caller": "0xc4F43656beC0E89970123C6Edadf21Bd643a1F9C"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xAd1aeeb07D5c1Da3F9673A6Be934ffEb159Ef88f"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x024C8Dd125CE7025cc68da9130F101891eb0e3eC"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x35b810F22395be8661654FDe09Ae0231E759677e"
//!         }
//!       ],
//!       "expected": [
//!         "121563127839120"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "21",
//!             "52"
//!           ],
//!           "caller": "0xB0Bce20A5805C1Da2F997503f7c0971D71F56071"
//!         }
//!       ],
//!       "expected": [
//!         "569381465857367090636427305760163241950353347303833610101782245331441"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_big",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "2"
//!           ],
//!           "caller": "0xE9dbbae34b8750F3BA52B7319D4573f3f3E1956d"
//!         }
//!       ],
//!       "expected": [
//!         "0xfffffffffffffffffffffffffffffffe00000000000000000000000000000001"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0000000000000000000000000000000000000000000000000000000000010000",
//!             "16"
//!           ],
//!           "caller": "0xce83B9E39aC0b61E453d903108aA3d79E155B164"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x2fff1ffffffffff5ffffff0fffffffff2ffffffafffafffcffff1ff234ffffff",
//!             "0xef231ffffffffff4f12fff34ffffffff2fffffbbfffafffdffff22f538ffffff"
//!           ],
//!           "caller": "0xc2834BD3D52721F234b55fd00B60477Efc4aFaBd"
//!         }
//!       ],
//!       "expected": [
//!         "46756260758475007021788099943083655901358133181480408838873172916982662561791"
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
//!           "caller": "0xAd831B2Fa4f3da494DE0bA49D5DA1494E8285Cc9"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xDf095457D9793531C6EBc9Ee4fbD5A0053bD3C17"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0xdE077DdcA0a2d7AF79303cC89554f17AF2dFe870"
//!         }
//!       ],
//!       "expected": [
//!         "1"
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
//!           "caller": "0x18aa8A4381090E7fc2C3b985eAD20fC194725b1f"
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
//!           "caller": "0x1345d64F0Efe655feCB19bc8fb2b0f3Af4e5c0D8"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xc4E4314B258268e348Ec7a77F4C382CBBb5851Ba"
//!         }
//!       ],
//!       "expected": [
//!         "115792089237316195423570985008687907853269984665640564039457584007913129639935"
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
//!           "caller": "0xC1f3076b10330b729ABa4c5921b5A2e43300B287"
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
            result := exp(a, b)
        }
    }
}

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
//!           "caller": "0xa73215a810c9cedb5a5cc0a7267e785da579fa35"
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
//!           "caller": "0x830ef151a8a468572697a23a05707d91a96b6b70"
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
//!           "caller": "0x34c453c5c912e550172b0cae634387a2fd272dc2"
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
//!           "caller": "0x04792d45f267e954b7140dc65da99ea26bc06ee6"
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
//!           "caller": "0x202bfd4be2bb8837ca931d221546f943da598ff3"
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
//!           "caller": "0x96f4d4f7b947464111764d65f34a4751c888b01d"
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
//!           "caller": "0x806b0fe0a9660f660f3d7cd2e8edb25628911e7d"
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
//!           "caller": "0x0481e40f0c8f1f88572adde0aa7d46ff474ee469"
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
//!             "451167890987656789",
//!             "3456789009876545678"
//!           ],
//!           "caller": "0x75cf4cd83a04f67034f0708e82a73a89d0949130"
//!         }
//!       ],
//!       "expected": [
//!         "1559592207175311407777037810745307942"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_max",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
//!             "0x0000000000000000000000000000000100000000000000000000000000000001"
//!           ],
//!           "caller": "0xe64cedd116f43bc7a23e2df973995d7c3291ff64"
//!         }
//!       ],
//!       "expected": [
//!         "0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_min_overflow",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0x0000002000000000000000000000000000000000000000000000000000000000",
//!             "0x0000000000000000000000000000000000000000000000000000000008000000"
//!           ],
//!           "caller": "0x07c0b44756f7946cae9145ac205a7ccd9b26c11c"
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
//!             "2345678909876543212345678909876543212345678909876543",
//!             "23456789098765432123456789876543212345678987654321"
//!           ],
//!           "caller": "0x48d17f79b205c628e9ce4e853cea25cf12b283a4"
//!         }
//!       ],
//!       "expected": [
//!         "109870817467274783132168917047078478060902558898874809919449649221827584233615"
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
//!           "caller": "0xc54f8270c2c59f4a105beb0fec717db8d4f3f7a1"
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
//!           "caller": "0x5de86be17bc5abb5a178626efde97e318ea5d59c"
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
//!           "caller": "0xa52a830c398896216658576417cefa6c73c6738d"
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
//!           "caller": "0x085d90bab93a39b8393b5fc85d5a94dc45c5e7b9"
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
//!           "caller": "0x64aeb008ab81763440e3f1bacac299522261dadf"
//!         }
//!       ],
//!       "expected": [
//!         "115792089237316195423570985008680470018517627231306220616114140632078343856462"
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
//!           "caller": "0x8eef417d85ae757ea480849e6fda7ae13553400f"
//!         }
//!       ],
//!       "expected": [
//!         "115792089237316195423570985008687907853246200392168179315609370186570806406713"
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
//!           "caller": "0x39dc682d90a478f9a3f994ec102b15a98d222bac"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.16;

contract Test {
    function main(uint256 a, uint256 b) external pure returns(uint256 result) {
        assembly {
            result := mul(a, b)
        }
    }
}

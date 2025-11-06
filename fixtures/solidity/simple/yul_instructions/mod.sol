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
//!           "caller": "0xf0de32ae5f068f01016e3748d1f9f009f1f5d9eb"
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
//!           "caller": "0x7b7fe23436dba7d4bbba104eef02ff1b0ff0f7cf"
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
//!           "caller": "0x42ed01adea6e252d91b4ee4ab7cc8d51d86c1a53"
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
//!           "caller": "0x44e94ac657af2b1152703c594603259a76c98036"
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
//!           "caller": "0x2ca0d69f50db65746686922228ce7dc695d1ca11"
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
//!           "caller": "0x35cad0a2d22a084d1d3def60f88fbe933f6063c3"
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
//!           "caller": "0x89fd7c610ac4aa2e17c3b15a2c386a4b215f96d9"
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
//!           "caller": "0x43739369bff359b4c8906556e21a4c4e44680b1c"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "3456789009876545678",
//!             "45116789098765678"
//!           ],
//!           "caller": "0x9f1cb2d421c65ef3c3a73112f769f8573fe95adb"
//!         }
//!       ],
//!       "expected": [
//!         "27913038370354150"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_to_zero",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "15903955902367335447395448984",
//!             "67897657890876"
//!           ],
//!           "caller": "0x5497c13e924ca1194f1d886c5eb483b1dce2f126"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_plus_one_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xab000000000000000000000000000000000000000000000000000000000000a2",
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1"
//!           ],
//!           "caller": "0x7cbe5928e8ddae8aff13b805200158264862af93"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_equals",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "6873546235472354672354762358492378590345034805934590348534",
//!             "6873546235472354672354762358492378590345034805934590348534"
//!           ],
//!           "caller": "0x1ac821b7a707bf3c4f49fbcbf692a867099070f3"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_ordinar_plus_one",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "0xab000000000000000000000000000000000000000000000000000000000000a1",
//!             "0xab000000000000000000000000000000000000000000000000000000000000a2"
//!           ],
//!           "caller": "0x967fa82d37011fd9c0e0749de83af5cc2faad930"
//!         }
//!       ],
//!       "expected": [
//!         "0xab000000000000000000000000000000000000000000000000000000000000a1"
//!       ]
//!     },
//!     {
//!       "name": "ordinar_bigger_ordinar",
//!       "inputs": [
//!         {
//!           "method": "main",
//!           "calldata": [
//!             "456789098765467892304234234234234234234",
//!             "7863249563247857289401203492047823764573465734573434537783"
//!           ],
//!           "caller": "0x8692675c70d526e6a3ce459a9598e77e47c93c23"
//!         }
//!       ],
//!       "expected": [
//!         "456789098765467892304234234234234234234"
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
//!           "caller": "0x9d1d3938cae5e1926ea0d7c6405953fb3b913df3"
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
//!           "caller": "0xa57713705a20c05f471e8f6ac317a65f9bf27dbb"
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
//!           "caller": "0x73ac6a1bc920ba2e50601496588ec5e42fe9cb60"
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
//!           "caller": "0x6aef33db5cd5ef8537fa252d64c0eb82ff583042"
//!         }
//!       ],
//!       "expected": [
//!         "0"
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
//!           "caller": "0xae49ed84a31000e3f1e58caa02edd95036041e71"
//!         }
//!       ],
//!       "expected": [
//!         "7437834752357434334343423343443375834785783474"
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
//!           "caller": "0x30a4b1746af03b942a98273acdbf247aa5973f02"
//!         }
//!       ],
//!       "expected": [
//!         "6417771337354779485678372628500671724"
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
//!           "caller": "0x2f586484601564dd893149fce659c3fc471ef01b"
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
            result := mod(a, b)
        }
    }
}

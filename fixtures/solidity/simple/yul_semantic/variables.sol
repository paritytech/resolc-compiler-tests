//! {
//!   "cases": [
//!     {
//!       "name": "declare_without_value",
//!       "inputs": [
//!         {
//!           "method": "declare_without_value",
//!           "calldata": [],
//!           "caller": "0xC7C6a92b70e63079F9627fAe63725155378eABfA"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "declare_tuple_without_value",
//!       "inputs": [
//!         {
//!           "method": "declare_tuple_without_value",
//!           "calldata": [],
//!           "caller": "0x7364Ea8EBC2475FE8FE408e153051f7a31122B44"
//!         }
//!       ],
//!       "expected": [
//!         "0",
//!         "0",
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "declare_with_value",
//!       "inputs": [
//!         {
//!           "method": "declare_with_value",
//!           "calldata": [],
//!           "caller": "0xE12C78ffe23243eD8960579446EB2Ad55bf1bF2E"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "declare_tuple_with_value",
//!       "inputs": [
//!         {
//!           "method": "declare_tuple_with_value",
//!           "calldata": [],
//!           "caller": "0x1799E93C35B6DAFdd2610eF71fd411c4aAF7020A"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "2",
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "assign",
//!       "inputs": [
//!         {
//!           "method": "assign",
//!           "calldata": [],
//!           "caller": "0x020315A38d9791e8A66F13Fb7d73c1D72E254210"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "assign_tuple",
//!       "inputs": [
//!         {
//!           "method": "assign_tuple",
//!           "calldata": [],
//!           "caller": "0xc64eFEF55F362f4Cf5759fb54c135950C06721a4"
//!         }
//!       ],
//!       "expected": [
//!         "1",
//!         "2",
//!         "3"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.4.17;

contract Test {
    function declare_without_value() external {
        assembly {
            let x
            mstore(0, x)
            return(0, 32)
        }
    }

    function declare_tuple_without_value() external {
        assembly {
            let x, y, z
            mstore(0, x)
            mstore(32, y)
            mstore(64, z)
            return(0, 96)
        }
    }

    function declare_with_value() external {
        assembly {
            let x := 0xdeadbeef
            mstore(0, x)
            return(0, 32)
        }
    }

    function declare_tuple_with_value() external {
        assembly {
            function f() -> _1, _2, _3 {
                _1 := 1
                _2 := 2
                _3 := 3
            }
            let x, y, z := f()
            mstore(0, x)
            mstore(32, y)
            mstore(64, z)
            return(0, 96)
        }
    }

    function assign() external {
        assembly {
            let x
            x := 0xdeadbeef
            mstore(0, x)
            return(0, 32)
        }
    }

    function assign_tuple() external {
        assembly {
            function f() -> _1, _2, _3 {
                _1 := 1
                _2 := 2
                _3 := 3
            }
            let x, y, z
            x, y, z := f()
            mstore(0, x)
            mstore(32, y)
            mstore(64, z)
            return(0, 96)
        }
    }
}

//! {
//!   "cases": [
//!     {
//!       "name": "declare_without_value",
//!       "inputs": [
//!         {
//!           "method": "declare_without_value",
//!           "calldata": [],
//!           "caller": "0xa41124f9b8d67a11a2d6e31f06f0295c4b28c9cf"
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
//!           "caller": "0x2e00b3e5bc91e77886990fb801cfae00000df7ba"
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
//!           "caller": "0x3540335ec9813f9c6b10dd18117561c9b85e153e"
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
//!           "caller": "0xf8196bf8b2aa8a87ba3a8547164177931db9a55b"
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
//!           "caller": "0xf91c457878eba23f68704def7c2828f10f6f8870"
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
//!           "caller": "0x851cd1c2017a1a133eb097be13fb42e6122ad711"
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

//! {
//!   "cases": [
//!     {
//!       "name": "declare_without_value",
//!       "inputs": [
//!         {
//!           "method": "declare_without_value",
//!           "calldata": [],
//!           "caller": "0xa47152D418c990De712dab7d1916684819DEA3A4"
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
//!           "caller": "0x03292f46611047C1E799C00F1a435EEf5e55F4A2"
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
//!           "caller": "0x0D47e829061b84D00310D9A9D1Dc7Bca49965c16"
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
//!           "caller": "0xd35d56D6d44589AFDF07776b2a9398173a1Dd6f4"
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
//!           "caller": "0x573B5Ba03A42d4FecE00F60B56a76aA2c0c6135f"
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
//!           "caller": "0xFfA09Ea9826F3D2A054Bad6CB065E16B8A0431f7"
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

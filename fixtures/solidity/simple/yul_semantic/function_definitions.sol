//! {
//!   "cases": [
//!     {
//!       "name": "no_args_and_ret",
//!       "inputs": [
//!         {
//!           "method": "no_args_and_ret",
//!           "calldata": [],
//!           "caller": "0x93CD3Ec3d68311f26cbFBCad1Be844012Cb08660"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "many_args",
//!       "inputs": [
//!         {
//!           "method": "many_args",
//!           "calldata": [],
//!           "caller": "0x9074985f20a5cF380Ba7f9a34986a303AADB064E"
//!         }
//!       ],
//!       "expected": [
//!         "120"
//!       ]
//!     },
//!     {
//!       "name": "many_ret_values",
//!       "inputs": [
//!         {
//!           "method": "many_ret_values",
//!           "calldata": [],
//!           "caller": "0x8E18175a8Cf892C10870E119A20802Aac6c3acAC"
//!         }
//!       ],
//!       "expected": [
//!         "78"
//!       ]
//!     },
//!     {
//!       "name": "empty_body_arg_side_effect",
//!       "inputs": [
//!         {
//!           "method": "empty_body_arg_side_effect",
//!           "calldata": [],
//!           "caller": "0x58d0ca1525495768bf0C4f37D1986Bc1F8A6f7Ca"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "leave_in_function",
//!       "inputs": [
//!         {
//!           "method": "leave_in_function",
//!           "calldata": [],
//!           "caller": "0xCF1845ae35512739cF2929cd046e70233303C88D"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_function",
//!       "inputs": [
//!         {
//!           "method": "return_in_function",
//!           "calldata": [],
//!           "caller": "0xD4313CC647703Bee6Dd8C0Df518d1C2299270E12"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef01"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef01"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "revert_in_function",
//!       "inputs": [
//!         {
//!           "method": "revert_in_function",
//!           "calldata": [],
//!           "caller": "0x369a99fD8cDAE1051e779bfbb425CCD52FE46B92"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef01"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "default_ret_value",
//!       "inputs": [
//!         {
//!           "method": "default_ret_value",
//!           "calldata": [],
//!           "caller": "0x299efd03cfdeAE6d9a6d69c98894cd12368df379"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0;

contract Test {
    function no_args_and_ret() external {
        assembly {
            function $_() {
                mstore(0, 0xdeadbeef)
                log0(0, 32)
            }
            $_()
        }
    }

    function many_args() external pure {
        assembly {
            function f(_1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12, _13, _14, _15) -> ret {
                ret := add(
                    add(
                        add(
                            add(_1, _2),
                            add(_3, _4)
                        ),
                        add(
                            add(_5, _6),
                            add(_7, _8)
                        )
                    ),
                    add(
                        add(
                            add(_9, _10),
                            add(_11, _12)
                        ),
                        add(
                            add(_13, _14),
                            _15
                        )
                    )
                )
            }
            mstore(0, f(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15))
            return(0, 32)
        }
    }

    function many_ret_values() external pure {
        assembly {
            function f() -> _1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12 {
                _1 := 1
                _2 := 2
                _3 := 3
                _4 := 4
                _5 := 5
                _6 := 6
                _7 := 7
                _8 := 8
                _9 := 9
                _10 := 10
                _11 := 11
                _12 := 12
            }
            let _1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12 := f()
            mstore(
                0,
                add(
                    add(
                        add(
                            add(_1, _2),
                            add(_3, _4)
                        ),
                        add(
                            add(_5, _6),
                            add(_7, _8)
                        )
                    ),
                    add(
                        add(_9, _10),
                        add(_11, _12)
                    )
                )
            )
            return(0, 32)
        }
    }

    function empty_body_arg_side_effect() external {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef)
                log0(0, 32)
            }
            function g(a) {}
            g(f())
        }
    }

    function leave_in_function() external {
        assembly {
            function f() {
                mstore(0, 0xdeadbeef01)
                log0(0, 32)
                leave
                mstore(0, 0xdeadbeef02)
                log0(0, 32)
            }
            f()
        }
    }

    function return_in_function() external {
        assembly {
            function f() {
                mstore(0, 0xdeadbeef01)
                log0(0, 32)
                return(0, 32)
                mstore(0, 0xdeadbeef02)
                log0(0, 32)
            }
            f()
        }
    }

    function revert_in_function() external {
        assembly {
            function f() {
                mstore(0, 0xdeadbeef01)
                log0(0, 32)
                revert(0, 32)
                mstore(0, 0xdeadbeef02)
                log0(0, 32)
            }
            f()
        }
    }

    function default_ret_value() external pure {
        assembly {
            function f() -> ret {}
            mstore(0, f())
            return(0, 32)
        }
    }
}

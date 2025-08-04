//! {
//!   "cases": [
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "true_condition",
//!           "calldata": [],
//!           "caller": "0xaa9f74e9E45FC904893243592CBB61D02d0F5a47"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef"
//!       ]
//!     },
//!     {
//!       "name": "false_condition",
//!       "inputs": [
//!         {
//!           "method": "false_condition",
//!           "calldata": [],
//!           "caller": "0x0Ca18698B8907776B422c8A3683eEC5938C56AF1"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef01"
//!       ]
//!     },
//!     {
//!       "name": "string_condition",
//!       "inputs": [
//!         {
//!           "method": "string_condition",
//!           "calldata": [],
//!           "caller": "0xdEd9444070E94a276D2375D9268C9C3E4CE8DD21"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef02"
//!       ]
//!     },
//!     {
//!       "name": "empty_string_condition",
//!       "inputs": [
//!         {
//!           "method": "empty_string_condition",
//!           "calldata": [],
//!           "caller": "0x215e2164688607776DF606de3cBC84b4e2174a0e"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef03"
//!       ]
//!     },
//!     {
//!       "name": "zero_condition",
//!       "inputs": [
//!         {
//!           "method": "zero_condition",
//!           "calldata": [],
//!           "caller": "0x3c78bB9C2f7f493A94FF36C63291bFa8dE89febF"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef04"
//!       ]
//!     },
//!     {
//!       "name": "one_condition",
//!       "inputs": [
//!         {
//!           "method": "one_condition",
//!           "calldata": [],
//!           "caller": "0x658AC3a75a400071234C1feF160401eF97B9B31a"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef05"
//!       ]
//!     },
//!     {
//!       "name": "number_condition",
//!       "inputs": [
//!         {
//!           "method": "number_condition",
//!           "calldata": [],
//!           "caller": "0xeD77Ebd0C17C32e6a7d75BE5cF2800Fc0BaeF802"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef06"
//!       ]
//!     },
//!     {
//!       "name": "true_runtime_condition",
//!       "inputs": [
//!         {
//!           "method": "true_runtime_condition",
//!           "calldata": [],
//!           "caller": "0xB7793E6b03fDc2d9830F8d7c86dEB91a91f0BA38"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef07"
//!       ]
//!     },
//!     {
//!       "name": "false_runtime_condition",
//!       "inputs": [
//!         {
//!           "method": "false_runtime_condition",
//!           "calldata": [],
//!           "caller": "0x352b372d401a056B652060A742DE29D4163D781A"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef08"
//!       ]
//!     },
//!     {
//!       "name": "return_in_condition",
//!       "inputs": [
//!         {
//!           "method": "return_in_condition",
//!           "calldata": [],
//!           "caller": "0x69512F3423AB8b958BAc2445DF4f6A79F8953843"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef09"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_condition",
//!       "inputs": [
//!         {
//!           "method": "revert_in_condition",
//!           "calldata": [],
//!           "caller": "0x90ae95D415f0D8F5Ad09891f0E1F21DBf9CD8A7d"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": [
//!           "0xdeadbeef0a"
//!         ]
//!       }
//!     },
//!     {
//!       "name": "empty_statement_condition_side_effect",
//!       "inputs": [
//!         {
//!           "method": "empty_statement_condition_side_effect",
//!           "calldata": [],
//!           "caller": "0xA29c43D2D47071CA6E732cf4c50147e39Ab8bb6e"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0b"
//!       ]
//!     },
//!     {
//!       "name": "return_in_statement",
//!       "inputs": [
//!         {
//!           "method": "return_in_statement",
//!           "calldata": [],
//!           "caller": "0x1194135A3304611AfAC3EB78013073EeB361f9B1"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0c"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_statement",
//!       "inputs": [
//!         {
//!           "method": "revert_in_statement",
//!           "calldata": [],
//!           "caller": "0xDC3BeCF1135Ac5eF32D8dea62df3C5C92F273294"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": [
//!           "0xdeadbeef0d"
//!         ]
//!       }
//!     },
//!     {
//!       "name": "nested_ifs",
//!       "inputs": [
//!         {
//!           "method": "nested_ifs",
//!           "calldata": [],
//!           "caller": "0x2C20F6dB01AB274bec7B672aA938428A2Ef75fD4"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0e"
//!       ]
//!     },
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0xF77b8AC6fB5b96571752A229CF103f3FE40Ee036"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef02"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           }
//!         ]
//!       }
//!     }
//!   ]
//! }

// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2;

contract Test {
    function true_condition() external pure {
        assembly {
            if true {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function false_condition() external pure {
        assembly {
            mstore(0, 0xdeadbeef01)
            if false {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function string_condition() external pure {
        assembly {
            if "abc" {
                mstore(0, 0xdeadbeef02)
            }
            return(0, 32)
        }
    }

    function empty_string_condition() external pure {
        assembly {
            mstore(0, 0xdeadbeef03)
            if "" {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function zero_condition() external pure {
        assembly {
            mstore(0, 0xdeadbeef04)
            if 0 {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function one_condition() external pure {
        assembly {
            if 1 {
                mstore(0, 0xdeadbeef05)
            }
            return(0, 32)
        }
    }


    function number_condition() external pure {
        assembly {
            if 344342323832832883 {
                mstore(0, 0xdeadbeef06)
            }
            return(0, 32)
        }
    }

    function true_runtime_condition() external payable {
        assembly {
            if eq(callvalue(), 0) {
                mstore(0, 0xdeadbeef07)
            }
            return(0, 32)
        }
    }

    function false_runtime_condition() external pure {
        assembly {
            mstore(0, 0xdeadbeef08)
            if eq(calldataload(0), 0) {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function return_in_condition() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef09)
                ret := 1
                return(0, 32)
            }
            if f() {
                mstore(0, 0xdeadbeef)
            }
            revert(0, 32)
        }
    }

    function revert_in_condition() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef0a)
                revert(0, 32)
            }
            if f() {
                mstore(0, 0xdeadbeef)
            }
            return(0, 32)
        }
    }

    function empty_statement_condition_side_effect() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef0b)
            }
            if f() {}
            return(0, 32)
        }
    }

    function return_in_statement() external pure {
        assembly {
            if true {
                mstore(0, 0xdeadbeef0c)
                return(0, 32)
            }
            revert(0, 32)
        }
    }

    function revert_in_statement() external pure {
        assembly {
            if true {
                mstore(0, 0xdeadbeef0d)
                revert(0, 32)
            }
            return(0, 32)
        }
    }

    function nested_ifs() external pure {
        assembly {
            if true {
                if true {
                    mstore(0, 0xdeadbeef0e)
                }
            }
            return(0, 32)
        }
    }

    function complex() external payable {
        assembly {
            if true {
                if false {
                    if eq(callvalue(), 0) {
                        mstore(0, 0xdeadbeef01)
                        log0(0, 32)
                    }
                    revert(0, 32)
                }
                mstore(0, 0xdeadbeef02)
                log0(0, 32)
                if eq(1, 1) {
                    if eq(callvalue(), 200) {
                        if false {
                            mstore(0, 0xdeadbeef03)
                            log0(0, 32)
                        }
                    }
                }
                if eq(add(1, 2), 3) {
                    if eq(1, 2) {
                        revert(0, 32)
                    }
                    if true {
                        return(0, 32)
                    }
                }
            }
            revert(0, 32)
        }
    }
}

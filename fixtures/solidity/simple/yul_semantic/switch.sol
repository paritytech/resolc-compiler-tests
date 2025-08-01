//! {
//!   "cases": [
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "true_condition",
//!           "calldata": [],
//!           "caller": "0x82E288a294Aa12a73903dd9aad2fae00Cc301a69"
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
//!       "name": "false_condition",
//!       "inputs": [
//!         {
//!           "method": "false_condition",
//!           "calldata": [],
//!           "caller": "0xA4B26EB7BaC733B4d1f126147734d420cd3589B3"
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
//!       "name": "string_condition",
//!       "inputs": [
//!         {
//!           "method": "string_condition",
//!           "calldata": [],
//!           "caller": "0xa22863a5a7b6cc36B6c27b14D36eA0bea90c6a75"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "empty_string_condition",
//!       "inputs": [
//!         {
//!           "method": "empty_string_condition",
//!           "calldata": [],
//!           "caller": "0x2598119527D7867524a573980ae715a6f2D955DD"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "zero_condition",
//!       "inputs": [
//!         {
//!           "method": "zero_condition",
//!           "calldata": [],
//!           "caller": "0xAd1de6Fc72f288B44955A2b4186e49a4314cD41D"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef04"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "one_condition",
//!       "inputs": [
//!         {
//!           "method": "one_condition",
//!           "calldata": [],
//!           "caller": "0x7B44E64A029766972dcddbfa15aBD5098b32693A"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef05"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "number_condition",
//!       "inputs": [
//!         {
//!           "method": "number_condition",
//!           "calldata": [],
//!           "caller": "0x40a688d5390c0EadcD7ACfd13B8394f554F57f65"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef06"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "runtime_condition",
//!       "inputs": [
//!         {
//!           "method": "runtime_condition",
//!           "calldata": [],
//!           "caller": "0x38C9584F2e9DAEfC4B245D87637107919AAaACF4"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef07"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_condition",
//!       "inputs": [
//!         {
//!           "method": "return_in_condition",
//!           "calldata": [],
//!           "caller": "0x8079E24123aA4b34ebdA3bf1B353171496437BCb"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef08"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_condition",
//!       "inputs": [
//!         {
//!           "method": "revert_in_condition",
//!           "calldata": [],
//!           "caller": "0x7618D26CEE2d85e44eDf2A67035dd76581ED8BF3"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": [
//!           "0xdeadbeef09"
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_case",
//!       "inputs": [
//!         {
//!           "method": "return_in_case",
//!           "calldata": [],
//!           "caller": "0x60E581F0b56C4E9f0C6F6f35929c0Cd843603524"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0a"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_case",
//!       "inputs": [
//!         {
//!           "method": "revert_in_case",
//!           "calldata": [],
//!           "caller": "0xD4941dFfa82f3DebEFd33Cd70aA234C7CD8AB89e"
//!         }
//!       ],
//!       "expected": {
//!         "exception": true,
//!         "return_data": [
//!           "0xdeadbeef0b"
//!         ]
//!       }
//!     },
//!     {
//!       "name": "nested_switchs",
//!       "inputs": [
//!         {
//!           "method": "nested_switchs",
//!           "calldata": [],
//!           "caller": "0xB364a1b3679c94395d8350E04380F9208B504f31"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0c"
//!       ]
//!     },
//!     {
//!       "name": "one_reachable_case",
//!       "inputs": [
//!         {
//!           "method": "one_reachable_case",
//!           "calldata": [],
//!           "caller": "0xDcd58648920870307449E61A3248E0Ba198a9109"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0d"
//!       ]
//!     },
//!     {
//!       "name": "one_unreachable_case",
//!       "inputs": [
//!         {
//!           "method": "one_unreachable_case",
//!           "calldata": [],
//!           "caller": "0x1D1c48eeb003c8c9f420857c0c44179b7aFFe5B0"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0e"
//!       ]
//!     },
//!     {
//!       "name": "only_default_case",
//!       "inputs": [
//!         {
//!           "method": "only_default_case",
//!           "calldata": [],
//!           "caller": "0x13a9bA00e0b5D6cbdbc03f044eEBAE59dC4A2687"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0f"
//!       ]
//!     },
//!     {
//!       "name": "reachable_default_case",
//!       "inputs": [
//!         {
//!           "method": "reachable_default_case",
//!           "calldata": [],
//!           "caller": "0x78a71437F0cA2242714FE33E91CED83BD9c961e7"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef10"
//!       ]
//!     },
//!     {
//!       "name": "unreachable_default_case",
//!       "inputs": [
//!         {
//!           "method": "unreachable_default_case",
//!           "calldata": [],
//!           "caller": "0xDe9C8cedf1A89cCF036cD9FA3Ea025483Bf56893"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef11"
//!       ]
//!     },
//!     {
//!       "name": "empty_default_case_condition_side_effect",
//!       "inputs": [
//!         {
//!           "method": "empty_default_case_condition_side_effect",
//!           "calldata": [],
//!           "caller": "0x8FEEd266097002B90f81cEFFbcF995840B433a07"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef12"
//!       ]
//!     },
//!     {
//!       "name": "many_cases",
//!       "inputs": [
//!         {
//!           "method": "many_cases",
//!           "calldata": [],
//!           "caller": "0xe291C4d8328BfA04382Cf5c7e2B6C8e551e789B2"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef13"
//!       ]
//!     },
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0x4203dB665F812dc8d012D8e3902153d708D84655"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef04"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef04"
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
    function true_condition() external {
        assembly {
            switch true
                case 12312 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 1 {
                    mstore(0, 0xdeadbeef)
                    log0(0, 32)
                }
            return(0, 0)
        }
    }

    function false_condition() external {
        assembly {
            switch false
                case 1 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 0 {
                    mstore(0, 0xdeadbeef01)
                    log0(0, 32)
                }
            return(0, 0)
        }
    }

    function string_condition() external {
        assembly {
            switch "abc"
                case "acd" {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 44048180597813453602326562734351324025098966208897425494240603688123167145984 {
                    mstore(0, 0xdeadbeef02)
                    log0(0, 32)
                }
            return(0, 0)
        }
    }

    function empty_string_condition() external {
        assembly {
            switch ""
                case "0" {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 0 {
                    mstore(0, 0xdeadbeef03)
                    log0(0, 32)
                }
            return(0, 0)
        }
    }

    function zero_condition() external {
        assembly {
            switch 0
                case true {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case false {
                    mstore(0, 0xdeadbeef04)
                    log0(0, 32)
                }
            return(0, 0)
        }
    }

    function one_condition() external {
        assembly {
            switch 1
                case 0x10 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 1 {
                    mstore(0, 0xdeadbeef05)
                    log0(0, 32)
                }
            return(0, 0)
        }
    }

    function number_condition() external {
        assembly {
            switch 344342323832832883
                case 344342323832832884 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 344342323832832883 {
                    mstore(0, 0xdeadbeef06)
                    log0(0, 32)
                }
            return(0, 0)
        }
    }

    function runtime_condition() external payable {
        assembly {
            switch add(callvalue(), 100)
                case 212 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 100 {
                    mstore(0, 0xdeadbeef07)
                    log0(0, 32)
                }
            return(0, 0)
        }
    }

    function return_in_condition() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef08)
                ret := 1
                return(0, 32)
            }
            switch f()
                case 0 {
                    mstore(0, 0xdeadbeef)
                }
            revert(0, 32)
        }
    }

    function revert_in_condition() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef09)
                revert(0, 32)
            }
            switch f()
                default {
                    mstore(0, 0xdeadbeef)
                }
            return(0, 32)
        }
    }

    function return_in_case() external {
        assembly {
            switch 4
                case 4  {
                    mstore(0, 0xdeadbeef0a)
                    return(0, 32)
                }
                case 5 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
            revert(0, 32)
        }
    }

    function revert_in_case() external {
        assembly {
            switch 100
                case 0 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 100 {
                    mstore(0, 0xdeadbeef0b)
                    revert(0, 32)
                }
                default {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
            return(0, 32)
        }
    }

    function nested_switchs() external {
        assembly {
            switch true
                case 1 {
                    switch 10
                        case 10 {
                            mstore(0, 0xdeadbeef0c)
                        }
                        case 11 {
                            mstore(0, 0xe2202)
                            log0(0, 32)
                        }
                }
                default {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
            return(0, 32)
        }
    }

    function one_reachable_case() external pure {
        assembly {
            switch 100
                case 100 {
                    mstore(0, 0xdeadbeef0d)
                }
            return(0, 32)
        }
    }

    function one_unreachable_case() external pure {
        assembly {
            mstore(0, 0xdeadbeef0e)
            switch 10
                case 11 {
                    mstore(0, 0xe2202)
                }
            return(0, 32)
        }
    }

    function only_default_case() external pure {
        assembly {
            switch "a"
                default {
                    mstore(0, 0xdeadbeef0f)
                }
            return(0, 32)
        }
    }

    function reachable_default_case() external {
        assembly {
            switch 1231233123
                case 0 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case "a" {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                default {
                    mstore(0, 0xdeadbeef10)
                }
            return(0, 32)
        }
    }

    function unreachable_default_case() external {
        assembly {
            switch 49
                case 0 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 49 {
                    mstore(0, 0xdeadbeef11)
                }
                case 222 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                default {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
            return(0, 32)
        }
    }

    function empty_default_case_condition_side_effect() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef12)
            }
            switch f()
            default {}
            return(0, 32)
        }
    }

    function many_cases() external {
        assembly {
            switch 100
                case 0 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 20 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 40 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 60 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 80 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 100 {
                    mstore(0, 0xdeadbeef13)
                }
                case 120 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 140 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 160 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                case 180 {
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
            return(0, 32)
        }
    }

    function complex() external payable {
        assembly {
            switch eq(callvalue(), 0)
                case 1 {
                    switch "a"
                        case 0x6200000000000000000000000000000000000000000000000000000000000000 {
                            mstore(0, 0xdeadbeef01)
                            log0(0, 32)
                        }
                        default {
                            mstore(0, 0xdeadbeef02)
                            log0(0, 32)
                            switch 5
                                case 5 {
                                    mstore(0, 0xdeadbeef03)
                                    log0(0, 32)
                                }
                                default {
                                    revert(0, 32)
                                }
                        }
                    mstore(0, 0xdeadbeef04)
                    log0(0, 32)
                    switch add(1, 2)
                        case 1 {
                            revert(0, 32)
                        }
                        case 2 {
                            revert(0, 32)
                        }
                }
                default {
                    switch 5
                        case 5 {
                            mstore(0, 0xdeadbeef05)
                            log0(0, 32)
                        }
                        case 4 {
                            mstore(0, 0xdeadbeef06)
                            log0(0, 32)
                            revert(0, 32)
                        }
                }
            return(0, 32)
        }
    }
}

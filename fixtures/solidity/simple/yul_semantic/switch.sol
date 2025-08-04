//! {
//!   "cases": [
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "true_condition",
//!           "calldata": [],
//!           "caller": "0xa666079e64319FC8359b21C8754C83F80Cb6E9bf"
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
//!           "caller": "0xF2ff3aE1A1Fd4B753876c459EE31b9eBD8212E0d"
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
//!           "caller": "0xc6640aE21Ae36507912770039a06B7f06fC7821a"
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
//!           "caller": "0x2D3fA28b84e28331834A3f901CEa901eb27fcDBD"
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
//!           "caller": "0xEAFE092AA23a60cEDfDaaE8352EDde6e83745C06"
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
//!           "caller": "0x17cBd7998B8060d88EFBBb0985693B7f1C610a1A"
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
//!           "caller": "0x6F6EEeA7316B3ED8F1759119b6bEDF464719CaFF"
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
//!           "caller": "0x040732d4c538f8932758B358a7Ed1d5aF1A30F55"
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
//!           "caller": "0x7a28B7Eb7CdE57C8755f690074f0887b79c5eBF0"
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
//!           "caller": "0xd9bD5db3cce14dbcB0c9580B1C664Dfe765A646c"
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
//!           "caller": "0x721D21b6d620056A757afC282E96Ed7c060b532B"
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
//!           "caller": "0x6C0e734bc61d4a9d6e2F3E49c11912864DF55Ad2"
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
//!           "caller": "0xd36FB83ccA6028e0D3EbB2BC2C10d388a716e640"
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
//!           "caller": "0x255C4CD7F2D3061fAE83CF8d2B4dE7d64206D0CA"
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
//!           "caller": "0xE40e55EA492715cf3bF1f4A593479FF1c5a2e173"
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
//!           "caller": "0x199A6F287654336861d1bEF03dE9c565d816d663"
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
//!           "caller": "0x1F4AA60B52e0717b19d8e00A48A10721988719A8"
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
//!           "caller": "0x88a85b6D40D35EBe88346aefAd5Ba6e45a3365eb"
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
//!           "caller": "0x8ED818D0ad1e4972FaCB3BdE3fAB9de40dA1AdBd"
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
//!           "caller": "0xF3104eFE3ec3c60724Cf0960b8F4C581c4E3d79C"
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
//!           "caller": "0x1c06F066aF320897BB999d46B3Ce8265008BE4F8"
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

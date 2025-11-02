//! {
//!   "cases": [
//!     {
//!       "name": "empty_init_block",
//!       "inputs": [
//!         {
//!           "method": "empty_init_block",
//!           "calldata": [],
//!           "caller": "0x851cd1c2017a1a133eb097be13fb42e6122ad711"
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
//!       "name": "return_in_init_block",
//!       "inputs": [
//!         {
//!           "method": "return_in_init_block",
//!           "calldata": [],
//!           "caller": "0xa87f8c7f5e7f967d3eb89e497193f4b6cb6cac6c"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef01"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_init_block",
//!       "inputs": [
//!         {
//!           "method": "revert_in_init_block",
//!           "calldata": [],
//!           "caller": "0x367aad2960e6f960144129e4469010c6f49d0b3f"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef02"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "true_condition",
//!       "inputs": [
//!         {
//!           "method": "true_condition",
//!           "calldata": [],
//!           "caller": "0x525ce0fede5a6dbbd7010b5bb470b70fbc5031b2"
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
//!               "0xdeadbeef03"
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
//!           "caller": "0x2a146b5b1944fd603aac834123d866dae692e7cf"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef04"
//!       ]
//!     },
//!     {
//!       "name": "string_condition",
//!       "inputs": [
//!         {
//!           "method": "string_condition",
//!           "calldata": [],
//!           "caller": "0xf2c3bdb4ccff0dc169f666961befdd289c8d2970"
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
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef05"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef05"
//!             ]
//!           },
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
//!       "name": "empty_string_condition",
//!       "inputs": [
//!         {
//!           "method": "empty_string_condition",
//!           "calldata": [],
//!           "caller": "0xa7c0b21bc78cb229e36e7bc2b0b6c7b7499e0cf6"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef06"
//!       ]
//!     },
//!     {
//!       "name": "zero_condition",
//!       "inputs": [
//!         {
//!           "method": "zero_condition",
//!           "calldata": [],
//!           "caller": "0x5c3efe887d44172f28144584fa307134043024f7"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef07"
//!       ]
//!     },
//!     {
//!       "name": "one_condition",
//!       "inputs": [
//!         {
//!           "method": "one_condition",
//!           "calldata": [],
//!           "caller": "0x36754391ba8550d9e3edad6a318c50ccb1f72a5c"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef08"
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
//!           "caller": "0x4c43ca9c7ceb95ae2ed25e517ccf2fe9922080d2"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef09"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0a"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0b"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0c"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0d"
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
//!           "caller": "0x2a838c057afaab1e30130a0a65778ddcc5039f29"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0a"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0a"
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
//!           "caller": "0x869a3dda8849e6ce0c7a936425ff9bf6482224da"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef0b"
//!       ]
//!     },
//!     {
//!       "name": "revert_in_condition",
//!       "inputs": [
//!         {
//!           "method": "revert_in_condition",
//!           "calldata": [],
//!           "caller": "0x7426b3cad5558bfa05ff6f88936c2f4346d66796"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef0c"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "empty_post_block",
//!       "inputs": [
//!         {
//!           "method": "empty_post_block",
//!           "calldata": [],
//!           "caller": "0xbdc1f76c1d37a5cbd3aa0fee1c08ee5197432d25"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0d"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_post_block",
//!       "inputs": [
//!         {
//!           "method": "return_in_post_block",
//!           "calldata": [],
//!           "caller": "0x897751234ac7870e1245352f02dcb2ed9c8c149e"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef0e"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef0e"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "revert_in_post_block",
//!       "inputs": [
//!         {
//!           "method": "revert_in_post_block",
//!           "calldata": [],
//!           "caller": "0x373c245179238eda4b97d6398c95c4f0689880eb"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef0f"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "unreachable_post_block",
//!       "inputs": [
//!         {
//!           "method": "unreachable_post_block",
//!           "calldata": [],
//!           "caller": "0xf749ad7dbe9556c849d58e9f04eae308318bd35c"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef10"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "empty_body",
//!       "inputs": [
//!         {
//!           "method": "empty_body",
//!           "calldata": [],
//!           "caller": "0xbeacbc344cf8cfece31a255d0f7ea6933c90181b"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef11"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef11"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "return_in_body",
//!       "inputs": [
//!         {
//!           "method": "return_in_body",
//!           "calldata": [],
//!           "caller": "0x8e3a62bcdba42cea20575bfbe09ccf034c892597"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef12"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef12"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "revert_in_body",
//!       "inputs": [
//!         {
//!           "method": "revert_in_body",
//!           "calldata": [],
//!           "caller": "0x5c15d0666b0e577504bddffba46a4e067e2b8e9b"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef13"
//!         ],
//!         "exception": true
//!       }
//!     },
//!     {
//!       "name": "continue_in_body",
//!       "inputs": [
//!         {
//!           "method": "continue_in_body",
//!           "calldata": [],
//!           "caller": "0x12a2591e6a3f9fde90a98e2224b96c6c8a58251d"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef14"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef14"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "break_in_body",
//!       "inputs": [
//!         {
//!           "method": "break_in_body",
//!           "calldata": [],
//!           "caller": "0xd8219d6583d2d38bb15e85d5589f598b4b669f8e"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef15"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "nested_loops",
//!       "inputs": [
//!         {
//!           "method": "nested_loops",
//!           "calldata": [],
//!           "caller": "0x6c25bb826be91110df0f4d3e1224b631494553b1"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef16"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef19"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "continue_in_nested_loop",
//!       "inputs": [
//!         {
//!           "method": "continue_in_nested_loop",
//!           "calldata": [],
//!           "caller": "0xae63fc8498ec5a4e37046a9878be969b5a025046"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef17"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "break_in_nested_loop",
//!       "inputs": [
//!         {
//!           "method": "break_in_nested_loop",
//!           "calldata": [],
//!           "caller": "0x08f332ffa67c74a096295a0d4783e39ca2f2d156"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef19"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef18"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef19"
//!             ]
//!           }
//!         ]
//!       }
//!     },
//!     {
//!       "name": "empty_loop_init_block_side_effect",
//!       "inputs": [
//!         {
//!           "method": "empty_loop_init_block_side_effect",
//!           "calldata": [],
//!           "caller": "0x9e93ef82865d97e08637db31897e35fa36b5dd57"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef19"
//!       ]
//!     },
//!     {
//!       "name": "empty_loop_post_block_side_effect",
//!       "inputs": [
//!         {
//!           "method": "empty_loop_post_block_side_effect",
//!           "calldata": [],
//!           "caller": "0xfd0c64fa6d96844e22e5fafad9cb2b63ad387058"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef1a"
//!       ]
//!     },
//!     {
//!       "name": "empty_loop_condition_side_effect",
//!       "inputs": [
//!         {
//!           "method": "empty_loop_condition_side_effect",
//!           "calldata": [],
//!           "caller": "0x091b2037d772b33163a035bec16a30b6fcbe35ca"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef1b"
//!       ]
//!     },
//!     {
//!       "name": "empty_loop_body_side_effect",
//!       "inputs": [
//!         {
//!           "method": "empty_loop_body_side_effect",
//!           "calldata": [],
//!           "caller": "0xe39779dc80937bad42859dbbbd50e7f2fce3c9a3"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef1c"
//!       ]
//!     },
//!     {
//!       "name": "empty_loop",
//!       "inputs": [
//!         {
//!           "method": "empty_loop",
//!           "calldata": [],
//!           "caller": "0xe7349887273df6b7f74a61f2658738f5598bb3fd"
//!         }
//!       ],
//!       "expected": [
//!         "0xdeadbeef1d"
//!       ]
//!     },
//!     {
//!       "name": "complex",
//!       "inputs": [
//!         {
//!           "method": "complex",
//!           "calldata": [],
//!           "caller": "0x9fee9a402a83d92881590bbfafcafb3373505cdd"
//!         }
//!       ],
//!       "expected": {
//!         "return_data": [
//!           "0xdeadbeef03"
//!         ],
//!         "events": [
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef01"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef01"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef02"
//!             ]
//!           },
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
//!               "0xdeadbeef03"
//!             ]
//!           },
//!           {
//!             "topics": [],
//!             "values": [
//!               "0xdeadbeef03"
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
    function empty_init_block() external {
        assembly {
            let i := 0
            for {} lt(i, 1) { i := add(i, 1) } {
                mstore(0, 0xdeadbeef)
                log0(0, 32)
            }
            return(0, 0)
        }
    }

    function return_in_init_block() external {
        assembly {
            let i := 0
            mstore(0, 0xdeadbeef01)
            for { return(0, 32) } lt(i, 1) { i := add(i, 1) } {
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            revert(0, 32)
        }
    }

    function revert_in_init_block() external {
        assembly {
            let i := 0
            mstore(0, 0xdeadbeef02)
            for { revert(0, 32) } lt(i, 1) { i := add(i, 1) } {
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            return(0, 32)
        }
    }

    function true_condition() external {
        assembly {
            for { let i := 0 } true { i := add(i, 1) } {
                mstore(0, 0xdeadbeef03)
                log0(0, 32)
                if eq(i, 2) {
                    break
                }
            }
            return(0, 0)
        }
    }

    function false_condition() external {
        assembly {
            mstore(0, 0xdeadbeef04)
            for { let i := 0 } false { i := add(i, 1) } {
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            return(0, 32)
        }
    }

    function string_condition() external {
        assembly {
            for { let i := 0 } "abc" { i := add(i, 1) } {
                mstore(0, 0xdeadbeef05)
                log0(0, 32)
                if eq(i, 3) {
                    break
                }
            }
            return(0, 0)
        }
    }

    function empty_string_condition() external {
        assembly {
            mstore(0, 0xdeadbeef06)
            for { let i := 0 } "" { i := add(i, 1) } {
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            return(0, 32)
        }
    }

    function zero_condition() external {
        assembly {
            mstore(0, 0xdeadbeef07)
            for { let i := 0 } 0 { i := add(i, 1) } {
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            return(0, 32)
        }
    }

    function one_condition() external {
        assembly {
            for { let i := 0 } 1 { i := add(i, 1) } {
                mstore(0, 0xdeadbeef08)
                log0(0, 32)
                if eq(i, 0) {
                    break
                }
            }
            return(0, 0)
        }
    }

    function number_condition() external {
        assembly {
            for { let i := 0 } 344342323832832883 { i := add(i, 1) } {
                mstore(0, add(0xdeadbeef09, i))
                log0(0, 32)
                if eq(i, 4) {
                    break
                }
            }
            return(0, 0)
        }
    }

    function runtime_condition() external payable {
        assembly {
            for { let i := 0 } lt(add(callvalue(), i), 2) { i := add(i, 1) } {
                mstore(0, 0xdeadbeef0a)
                log0(0, 32)
            }
            return(0, 0)
        }
    }

    function return_in_condition() external {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef0b)
                ret := 1
                return(0, 32)
            }
            for { let i := 0 } f() { i := add(i, 1) } {
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            revert(0, 32)
        }
    }

    function revert_in_condition() external {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef0c)
                revert(0, 32)
            }
            for { let i := 0 } f() { i := add(i, 1) } {
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            return(0, 32)
        }
    }

    function empty_post_block() external {
        assembly {
            for { let i := 0 } lt(i, 1) {} {
                mstore(0, 0xdeadbeef0d)
                log0(0, 32)
                i := add(i, 1)
            }
            return(0, 0)
        }
    }

    function return_in_post_block() external {
        assembly {
            for { let i := 0 } true { mstore(0, 0xdeadbeef0e) return(0, 32) } {
                mstore(0, 0xdeadbeef0e)
                log0(0, 32)
            }
            revert(0, 32)
        }
    }

    function revert_in_post_block() external {
        assembly {
            for { let i := 0 } lt(i, 23232) { mstore(0, 0xdeadbeef0f) revert(0, 32) } {
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            return(0, 32)
        }
    }

    function unreachable_post_block() external {
        assembly {
            for { let i := 0 } lt(i, 23232) { revert(0, 32) } {
                mstore(0, 0xdeadbeef10)
                log0(0, 32)
                break
            }
            return(0, 0)
        }
    }

    function empty_body() external {
        assembly {
            for { let i := 0 } lt(i, 2) { mstore(0, 0xdeadbeef11) log0(0, 32) i := add(i, 1) } {}
            return(0, 0)
        }
    }

    function return_in_body() external {
        assembly {
            for { let i := 0 } iszero(eq(i, 5)) { i := add(i, 1) } {
                mstore(0, 0xdeadbeef12)
                log0(0, 32)
                return(0, 32)
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            revert(0, 32)
        }
    }

    function revert_in_body() external {
        assembly {
            for { let i := 0 } iszero(eq(i, 5)) { i := add(i, 1) } {
                mstore(0, 0xdeadbeef13)
                revert(0, 32)
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            return(0, 32)
        }
    }

    function continue_in_body() external {
        assembly {
            for { let i := 0 } iszero(eq(i, 2)) { i := add(i, 1) } {
                mstore(0, 0xdeadbeef14)
                log0(0, 32)
                continue
                revert(0, 32)
            }
            return(0, 0)
        }
    }

    function break_in_body() external {
        assembly {
            for { let i := 5 } gt(i, 3) { i := sub(i, 1) } {
                mstore(0, 0xdeadbeef15)
                log0(0, 32)
                break
                mstore(0, 0xe2202)
                log0(0, 32)
            }
            return(0, 0)
        }
    }

    function nested_loops() external {
        assembly {
            for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
                for { let j := 0 } lt(j, 2) { j := add(j, 1) } {
                    mstore(0, add(0xdeadbeef16, add(mul(i, 2), j)))
                    log0(0, 32)
                }
            }
            return(0, 0)
        }
    }

    function continue_in_nested_loop() external {
        assembly {
            for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
                for { let j := 0 } lt(j, 2) { j := add(j, 1) } {
                    mstore(0, 0xdeadbeef17)
                    log0(0, 32)
                    continue
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                mstore(0, 0xdeadbeef18)
                log0(0, 32)
            }
            return(0, 0)
        }
    }

    function break_in_nested_loop() external {
        assembly {
            for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
                for { let j := 0 } lt(j, 2) { j := add(j, 1) } {
                    mstore(0, 0xdeadbeef18)
                    log0(0, 32)
                    break
                    mstore(0, 0xe2202)
                    log0(0, 32)
                }
                mstore(0, 0xdeadbeef19)
                log0(0, 32)
            }
            return(0, 0)
        }
    }

    function empty_loop_init_block_side_effect() external pure {
        assembly {
            for { mstore(0, 0xdeadbeef19) } false {} {}
            return(0, 32)
        }
    }

    function empty_loop_post_block_side_effect() external pure {
        assembly {
            mstore(0, 0xdeadbeef1a)
            for {} true { return(0, 32) } {}
            revert(0, 0)
        }
    }

    function empty_loop_condition_side_effect() external pure {
        assembly {
            function f() -> ret {
                mstore(0, 0xdeadbeef1b)
            }
            for {} f() {} {}
            return(0, 32)
        }
    }

    function empty_loop_body_side_effect() external pure {
        assembly {
            mstore(0, 0xdeadbeef1c)
            for {} true {} {
                return(0, 32)
            }
            revert(0, 0)
        }
    }

    function empty_loop() external pure {
        assembly {
            mstore(0, 0xdeadbeef1d)
            for {} false {} {}
            return(0, 32)
        }
    }

    function complex() external payable {
        assembly {
            for {} true {} {
                for { let i := 0 } lt(i, 2) { i := add(i, 1) } {
                    for { let p := callvalue() } lt(p, 2) { p := add(p, 1) } {
                        if eq(p, 1) {
                            continue
                        }
                        mstore(0, 0xdeadbeef01)
                        log0(0, 32) // 1 * 2 * 1 = 2 times
                    }
                    for { let j := 2 } gt(j, 0) { j := sub(j, 1) } {
                        for {} true {} {
                            mstore(0, 0xdeadbeef02)
                            log0(0, 32) // 1 * 2 * 2 * 1 = 4 times
                            break
                            revert(0, 32)
                        }
                        if eq(j, 1) {
                            break
                        }
                    }
                }
                for { let h := 1 } lt(h, 5) { h := add(h, 1) } {
                    mstore(0, 0xdeadbeef03)
                    log0(0, 32) // 1 * 3 = 3 times
                    if eq(h, 3) {
                        return(0, 32)
                    }
                }
                break
            }
            revert(0, 0)
        }
    }
}

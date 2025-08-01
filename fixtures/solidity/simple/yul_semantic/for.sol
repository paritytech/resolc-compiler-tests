//! {
//!   "cases": [
//!     {
//!       "name": "empty_init_block",
//!       "inputs": [
//!         {
//!           "method": "empty_init_block",
//!           "calldata": [],
//!           "caller": "0xf239E620a66025c8cFfdC4ad10f5873E4C1cee7b"
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
//!           "caller": "0x63671409292446A7E773E36bB793e1aea2000594"
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
//!           "caller": "0x7cfB90038b4B2BE4C3F407ecF263992Bf075d321"
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
//!           "caller": "0xf5177a964EE8c7Fc0957f58cF7979bD5261F2eF0"
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
//!           "caller": "0x0Eb3C569386BCD55500aDB019286A9aE690458B9"
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
//!           "caller": "0x1CD557Af46c28360F470eD4EA1ae5EF683090289"
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
//!           "caller": "0xFaD0E8b278253F4aba6813c1f393f7396621e69C"
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
//!           "caller": "0xC443c0f2b0057a65F06aeff7067D387b78662442"
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
//!           "caller": "0x8d64eBb4a556CF04C1FaA3af071d8889bBA46610"
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
//!           "caller": "0x6B93A889F6cbB5a0Ee31Cfe887a861983E02b1de"
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
//!           "caller": "0x988F1A507EAA666b595907C7bAeDb96f4cdDe6df"
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
//!           "caller": "0x8EE53277597068e00afB98F0C92CE30e2812dF3a"
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
//!           "caller": "0x1cE58affb758fE54E7778EbF316F1ec38684110C"
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
//!           "caller": "0xF38e854a6bac2d70B9f7729DB57Ab5Dc3c5df307"
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
//!           "caller": "0xf4547BDc2899431e1b868351EbE9F8dDc5599629"
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
//!           "caller": "0x51f9501f5D209aDbce943c10D600F0c42e672F88"
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
//!           "caller": "0xa817C376e927c5b8902708AA24c8b8d73494cdEc"
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
//!           "caller": "0xc0C17Fe9bBf9c02BE6a685FcFc1Fb0aE13f7cF7A"
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
//!           "caller": "0x74d456B955027313da6beDe5433130A6a43319e6"
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
//!           "caller": "0xd42E4A8DCFc2625457a4C60E2f1aad21cc86Ed80"
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
//!           "caller": "0x68e3855e62aE3e11ac80B42b55086CeB819234b9"
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
//!           "caller": "0x497f812b71029Ac0C93704E78c16984aD9277750"
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
//!           "caller": "0xb12739ca0c54aE37DC66Cf69fdc6BB68aa25cBB6"
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
//!           "caller": "0xb8C3dF1f6b90033E112eD0b1A6adCE712399273c"
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
//!           "caller": "0x9642a1B3fe686659591209Eb79CD6023C570A910"
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
//!           "caller": "0x9f7c694Ba63a6639a11dd711CeE1a206588BD0Db"
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
//!           "caller": "0xa051812F507da3949D0d983104D09e9c51fA6Aa6"
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
//!           "caller": "0x0A6B44A048cfBe51606885C5f34EDc669Aaa372d"
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
//!           "caller": "0xfE5A02b4b57A4694bc77f4143a3AeA70491840BB"
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
//!           "caller": "0x29c5cFBd1159D2844fA0FA44A8f977C1524653e6"
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
//!           "caller": "0xE1109781970c0c470dF8edAfEAbbcb22092a9f39"
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

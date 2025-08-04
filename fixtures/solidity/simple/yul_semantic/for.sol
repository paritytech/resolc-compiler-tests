//! {
//!   "cases": [
//!     {
//!       "name": "empty_init_block",
//!       "inputs": [
//!         {
//!           "method": "empty_init_block",
//!           "calldata": [],
//!           "caller": "0xeE475347782cFf454A91dF95FF198D9685eF1818"
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
//!           "caller": "0x2193dccd06547B58a121286430a077729E9241d5"
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
//!           "caller": "0xac11267896dAcd04B5F6fa6725A2159F8e309478"
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
//!           "caller": "0x87DE296cEB7587470eD0f17a819Dafb1F16A99E6"
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
//!           "caller": "0xFe51972AfA68ae66555FD63821DFe1451eFfa3Ed"
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
//!           "caller": "0x885C1b0DB69e449efE3A5fbAAC9581665fD729Af"
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
//!           "caller": "0x104824Ce0325c8a83ec418f592AE804799569F07"
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
//!           "caller": "0xf41057e72f00f4ACee782C91369738a152005CAB"
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
//!           "caller": "0xc65f4DD1Be565e160ffe361e1b0b60e6f4e22360"
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
//!           "caller": "0x446A1B757b44470559F5565D2DeAB13d8A3580C7"
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
//!           "caller": "0x107726c55CDE04f858c4169730686A9747dfD364"
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
//!           "caller": "0x5aADB69F69a3d1C5eF3208C8E00C7490E2cb220d"
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
//!           "caller": "0x956231B9e573121a88a76c3275ea3191b972Addb"
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
//!           "caller": "0xF38529E83eB0E43f8cD7c7eE95870f98a1fF9921"
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
//!           "caller": "0x62DA12f28862b6A7E3bbF80f68866A7a48ebd792"
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
//!           "caller": "0x88213439aa51a05965FF59e125A9a2c730C8E303"
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
//!           "caller": "0xFEc60D6c200713215BDaD35609Ef0Aad8eF9696C"
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
//!           "caller": "0x6Eb2658699C50A7A85e5d203b20Aae429F7Da742"
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
//!           "caller": "0xa8F5bA8D8b6aA8CB8137f757FF5B25062eF91c07"
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
//!           "caller": "0x0D340Dd0C9C4092868A90b8fB1553e536663D347"
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
//!           "caller": "0xCFe3382f85F0DAfe1a5B0b902Dc31Cc4249739ff"
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
//!           "caller": "0x6D38e24D54cDCA124596C81665BB8d2428A5F3C3"
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
//!           "caller": "0x66CC971f4c85aba2eF81A81063C3FD353804dE4B"
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
//!           "caller": "0xE0c3942ED9A0333E278BA528649Ee5501af7759F"
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
//!           "caller": "0xDA986ABba177242774BBed41276242E3a4277d16"
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
//!           "caller": "0x4ADE633AEf735b5A53f2d6Be733efC22c8cdF472"
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
//!           "caller": "0x3cCc4Cc549D2d0681FdA6583cF6664983606fDCB"
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
//!           "caller": "0xE029079117653e33FebD31C8a2B048099994AEA5"
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
//!           "caller": "0x63fb21edE9b691162742C4736bCB559850335cBb"
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
//!           "caller": "0x2119b513e16De982Fe16aD4384256eaF80DCb997"
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
//!           "caller": "0xeeBF337E2F230Ef4eF644d0Db610bBcFb631c28e"
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

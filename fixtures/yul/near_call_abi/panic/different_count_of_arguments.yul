//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "without_args_failure",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0",
//!             "1"
//!           ],
//!           "caller": "0x2B1D751c392B788F8e7B07f0A70127EAD881AFD0"
//!         }
//!       ],
//!       "expected": [
//!         "666",
//!         "667"
//!       ]
//!     },
//!     {
//!       "name": "without_args_success",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "0",
//!             "0"
//!           ],
//!           "caller": "0x14a3788E9f6fF7867096f4AB23bc09bCF27E9e21"
//!         }
//!       ],
//!       "expected": [
//!         "777"
//!       ]
//!     },
//!     {
//!       "name": "1_arg_failure",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1",
//!             "1"
//!           ],
//!           "caller": "0x7fBdFba6b300A5F54a71C0a3D047BA8F21610e4a"
//!         }
//!       ],
//!       "expected": [
//!         "666",
//!         "667"
//!       ]
//!     },
//!     {
//!       "name": "1_arg_success",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1",
//!             "0"
//!           ],
//!           "caller": "0x693409A1952AA60a01772c0A1CB8CB8e4FDC2Fd3"
//!         }
//!       ],
//!       "expected": [
//!         "1"
//!       ]
//!     },
//!     {
//!       "name": "2_args_failure",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2",
//!             "1"
//!           ],
//!           "caller": "0x9eEbD60923AC273d8dFC308873fd64bB26b928ae"
//!         }
//!       ],
//!       "expected": [
//!         "666",
//!         "667"
//!       ]
//!     },
//!     {
//!       "name": "2_args_success",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2",
//!             "0"
//!           ],
//!           "caller": "0xC375CE036Cbcf2AE7a3D73686632d57FC780e2A4"
//!         }
//!       ],
//!       "expected": [
//!         "3"
//!       ]
//!     },
//!     {
//!       "name": "5_args_failure",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5",
//!             "1"
//!           ],
//!           "caller": "0x2a5980CBb8E41450F0fcd88AdC657fa656C30e67"
//!         }
//!       ],
//!       "expected": [
//!         "666",
//!         "667"
//!       ]
//!     },
//!     {
//!       "name": "5_args_success",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "5",
//!             "0"
//!           ],
//!           "caller": "0x31b2c2b62B3d95473726Bb949182C06031a93490"
//!         }
//!       ],
//!       "expected": [
//!         "15"
//!       ]
//!     },
//!     {
//!       "name": "16_args_failure",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "16",
//!             "1"
//!           ],
//!           "caller": "0x03b59646f5D5EaE87652A9dFfC26abB1e248D995"
//!         }
//!       ],
//!       "expected": [
//!         "666",
//!         "667"
//!       ]
//!     },
//!     {
//!       "name": "16_args_success",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "16",
//!             "0"
//!           ],
//!           "caller": "0x9967E2C9E7cEF7985680697Ed5D789B297B47C70"
//!         }
//!       ],
//!       "expected": [
//!         "136"
//!       ]
//!     },
//!     {
//!       "name": "20_args_failure",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "20",
//!             "1"
//!           ],
//!           "caller": "0x3AD2A5A73385E48e476386ACccEEea79692ABe2f"
//!         }
//!       ],
//!       "expected": [
//!         "666",
//!         "667"
//!       ]
//!     },
//!     {
//!       "name": "20_args_success",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "20",
//!             "0"
//!           ],
//!           "caller": "0x4Ec254AD8A448b2773D816083efc5441a2fC8ea4"
//!         }
//!       ],
//!       "expected": [
//!         "210"
//!       ]
//!     }
//!   ],
//!   "enable_eravm_extensions": true
//! }

object "Test" {
    code {
        {
            let size := datasize("Test_deployed")
            codecopy(0, dataoffset("Test_deployed"), size)
            return(0, size)
        }
    }
    object "Test_deployed" {
        code {
            {
                let args_count := calldataload(0)

                let go_static := calldataload(32)
                if eq(go_static, 1) {
                    calldatacopy(0, 0, 32)
                    pop(staticcall(gas(), address(), 0, 32, 0, 64))
                    return(0, 64)
                }

                let result
                switch args_count
                case 0 {
                    result := ZKSYNC_NEAR_CALL_without_args(gas())
                }
                case 1 {
                    result := ZKSYNC_NEAR_CALL_1_arg(gas(), 1)
                }
                case 2 {
                    result := ZKSYNC_NEAR_CALL_2_args(gas(), 1, 2)
                }
                case 5 {
                    result := ZKSYNC_NEAR_CALL_5_args(gas(), 1, 2, 3, 4, 5)
                }
                case 16 {
                    result := ZKSYNC_NEAR_CALL_16_args(gas(), 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
                }
                case 20 {
                    result := ZKSYNC_NEAR_CALL_20_args(gas(), 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
                }
                default {
                    result := 0
                }

                mstore(0, result)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_without_args(abi_data) -> result {
                sstore(0, 0)
                result := 777
            }

            function ZKSYNC_NEAR_CALL_1_arg(abi_data, arg1) -> result {
                sstore(0, 0)
                result := arg1
            }

            function ZKSYNC_NEAR_CALL_2_args(abi_data, arg1, arg2) -> result {
                result := add(arg1, arg2)
                sstore(0, 0)
            }

            function ZKSYNC_NEAR_CALL_5_args(abi_data, arg1, arg2, arg3, arg4, arg5) -> result {
                sstore(0, 0)
                result := add(arg1, add(arg2, add(arg3, add(arg4, arg5))))
            }

            function ZKSYNC_NEAR_CALL_16_args(abi_data, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16) -> result {
                result := add(
                    add(
                        add(
                            add(arg1, arg2),
                            add(arg3, arg4)
                        ),
                        add(
                            add(arg5, arg6),
                            add(arg7, arg8)
                        )
                    ),
                    add(
                        add(
                            add(arg9, arg10),
                            add(arg11, arg12)
                        ),
                        add(
                            add(arg13, arg14),
                            add(arg15, arg16)
                        )
                    )
                )
                sstore(0, 0)
            }

            function ZKSYNC_NEAR_CALL_20_args(abi_data, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20) -> result {
                sstore(0, 0)
                result := add(
                    add(
                        add(
                            add(
                                add(arg1, arg2),
                                add(arg3, arg4)
                            ),
                            add(
                                add(arg5, arg6),
                                add(arg7, arg8)
                            )
                        ),
                        add(
                            add(
                                add(arg9, arg10),
                                add(arg11, arg12)
                            ),
                            add(
                                add(arg13, arg14),
                                add(arg15, arg16)
                            )
                        )
                    ),
                    add(
                        add(arg17, arg18),
                        add(arg19, arg20)
                    )
                )
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 666)
                mstore(32, 667)
                return(0, 64)
            }
        }
    }
}

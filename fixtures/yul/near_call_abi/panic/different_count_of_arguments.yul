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
//!           "caller": "0xadf5Aa30CbC9e6DC447D592B48CcCb9271542450"
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
//!           "caller": "0x21802D73355286159DeCfa97D63A795442625ac3"
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
//!           "caller": "0xa5Ecc8401b971fEa1BAE4B4E32E64Afb2C6Ab842"
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
//!           "caller": "0x072f526dE4b6E065753cB5B3F4767D6d5B21aEdb"
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
//!           "caller": "0x4c139ea168c448d8c960d6b9C5b0AA89a93a2feA"
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
//!           "caller": "0xC898F29fD818600438121c27803BbeB04190638a"
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
//!           "caller": "0x6624e7A72f06f123D19A892CFA8051792f74c6CA"
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
//!           "caller": "0x73276c24fC7C54AA4c7A8f8CdF15a6aDb6611bEC"
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
//!           "caller": "0x936fB2090cb9A8E18c300507495e923a9449ceF8"
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
//!           "caller": "0xE3Ac138e5Ac4B9E9Aa1e2dd34f9C8Fe16150FE17"
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
//!           "caller": "0x284561fD7742BC36230605853429d23c190960ED"
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
//!           "caller": "0xaa920008b4B648069924dd9Ec7350f93CbCBBEc8"
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

//! {
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "failure",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "11",
//!             "12",
//!             "1"
//!           ],
//!           "caller": "0x702B1E972fE11B34148287785d76928F9a9c3A76"
//!         }
//!       ],
//!       "expected": [
//!         "0"
//!       ]
//!     },
//!     {
//!       "name": "success",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "12",
//!             "12",
//!             "0"
//!           ],
//!           "caller": "0x222c1424ad90a40B505Be6dF879189668984a9C8"
//!         }
//!       ],
//!       "expected": [
//!         "777"
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
                let arg1 := calldataload(0)
                let arg2 := calldataload(32)

                let go_static := calldataload(64)
                if eq(go_static, 1) {
                    calldatacopy(0, 0, 64)
                    pop(staticcall(gas(), address(), 0, 64, 0, 32))
                    return(0, 32)
                }

                let result := ZKSYNC_NEAR_CALL_test(gas(), arg1, arg2)
                mstore(0, result)
                return(0, 32)
            }

            function ZKSYNC_NEAR_CALL_test(abi_data, arg1, arg2) -> result {
                deeper()
                result := 777
            }

            function deeper() {
                sstore(0, 0)
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 666)
            }
        }
    }
}

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
//!             "777",
//!             "1"
//!           ],
//!           "caller": "0xbd68a0e6A1dE1ffE12eBB7783d2f8F7973c8969d"
//!         }
//!       ],
//!       "expected": [
//!         "0",
//!         "666"
//!       ]
//!     },
//!     {
//!       "name": "success",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "777",
//!             "0"
//!           ],
//!           "caller": "0xa8480FDacAf3750A98816004E6F69faB63E16a58"
//!         }
//!       ],
//!       "expected": [
//!         "777",
//!         "0"
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
                let arg := calldataload(0)

                let result := ZKSYNC_NEAR_CALL_test(555, arg)
                mstore(0, result)
                return(0, 64)
            }

            function ZKSYNC_NEAR_CALL_test(abi_data, arg) -> result {
                deeper()
                result := 777
            }

            function deeper() {
                if calldataload(32) {
                    verbatim_0i_0o("throw")
                }
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(32, 666)
            }
        }
    }
}

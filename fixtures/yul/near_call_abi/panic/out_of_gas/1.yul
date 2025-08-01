//! {
//!   "enable_eravm_extensions": true,
//!   "targets": [
//!     "eravm"
//!   ],
//!   "cases": [
//!     {
//!       "name": "500_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "500"
//!           ],
//!           "caller": "0x16373C172d98Dbb55701a9e8F56D4b45e53FB099"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "1000_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1000"
//!           ],
//!           "caller": "0x2c9410ACEfF398dF7eD4e1490c5290a3eA3DF4Fb"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "1500_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "1500"
//!           ],
//!           "caller": "0x6Db15e33e66739809758684e431952b572924ebc"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "2000_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2000"
//!           ],
//!           "caller": "0xb77b1AeA5601396Ee1f9BEAB2A0825a027422f11"
//!         }
//!       ],
//!       "expected": []
//!     },
//!     {
//!       "name": "2500_gas",
//!       "inputs": [
//!         {
//!           "method": "#fallback",
//!           "calldata": [
//!             "2500"
//!           ],
//!           "caller": "0xf7055B769ecAA0bfa1a60aa55D5561FE4a168148"
//!         }
//!       ],
//!       "expected": []
//!     }
//!   ]
//! }

// A really basic test that only sets one memory cell to 1.
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
            let gas_to_pass := calldataload(0)

            function BOOTLOADER_FORMAL_ADDR() -> ret {
                ret := 0x0000000000000000000000000000000000008001
            }

            function ZKSYNC_NEAR_CALL_tryTmp(abi) {
                let tmp := balance(BOOTLOADER_FORMAL_ADDR())
                mstore(0, tmp)
            }

            function ZKSYNC_CATCH_NEAR_CALL() {
                mstore(0, 13)
            }

            ZKSYNC_NEAR_CALL_tryTmp(gas_to_pass)
        }
    }
}